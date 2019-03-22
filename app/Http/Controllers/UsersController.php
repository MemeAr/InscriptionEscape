<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Database\DatabaseManager;
use Illuminate\Support\Facades\DB;
use App\User;

class UsersController extends Controller
{
    public function getAllUsers(){
        $users = User::all();
        foreach ($users as $user){
            echo "   user_id = ".$user->id."   user_cursus= ". $user->cursus;
        }
    }
    
    public function triUsers(){
        $tabCITISE = [];
        $tabDTA = [];
        $tabSMW = [];
        $tabFISADE = [];
        $tabFISAIPSI = [];
        $tabFISE = [];
        $tabINFOCOM = [];
        $tabDCIMN = [];
        $users = User::all();
        foreach($users as $user){
            if ($user->cursus === 'CITISE 1'){
                array_push($tabCITISE, $user->id);
                
            }
            elseif($user->cursus === 'DTA'){
                array_push($tabDTA, $user->id);
                
            }
            elseif($user->cursus === 'DU SMW'){
                array_push($tabSMW, $user->id);
            }
            elseif($user->cursus === 'FISA DE'){
                array_push($tabFISADE, $user->id);
            }
            elseif($user->cursus === 'FISA IPSI 1'){
                array_push($tabFISAIPSI, $user->id);
            }
            elseif($user->cursus === 'FISE 1 '){
                array_push($tabFISE, $user->id);
            }
            elseif($user->cursus === 'L3 Infocom'){
                array_push($tabINFOCOM, $user->id);
            }
            elseif($user->cursus === 'M1 DCIMN'){
                array_push($tabDCIMN, $user->id);
            }
        }
       // return $tabDTA;
       $tabcalcul=[];
       array_push($tabcalcul, $tabCITISE);
       array_push($tabcalcul, $tabDCIMN);
       array_push($tabcalcul, $tabDTA);
       array_push($tabcalcul, $tabFISADE);
       array_push($tabcalcul, $tabFISAIPSI);
       array_push($tabcalcul, $tabFISE);
       array_push($tabcalcul, $tabINFOCOM);
       array_push($tabcalcul, $tabSMW);
       
       $taille=0;
       foreach ($tabcalcul as $tab){
           if (sizeof($tab)>$taille){
               $taille=sizeof($tab);
           }
       }
       
       $finaltab=[];
       for ($p=0;$p<$taille;$p++){
           if (isset($tabCITISE[$p])){
           array_push($finaltab,$tabCITISE[$p]);
           }
           if (isset($tabDCIMN[$p])){
               array_push($finaltab,$tabDCIMN[$p]);
           }
           if (isset($tabDTA[$p])){
               array_push($finaltab,$tabDTA[$p]);
           }
           if (isset($tabFISADE[$p])){
               array_push($finaltab,$tabFISADE[$p]);
           }
           if (isset($tabFISAIPSI[$p])){
               array_push($finaltab,$tabFISAIPSI[$p]);
           }
           if (isset($tabFISE[$p])){
               array_push($finaltab,$tabFISE[$p]);
           }
           if (isset($tabINFOCOM[$p])){
               array_push($finaltab,$tabINFOCOM[$p]);
           }
           if (isset($tabSMW[$p])){
               array_push($finaltab,$tabSMW[$p]);
           }
       }
       
       $team=1;
       
       $k=0;
       
       for($q=0 ; $q<sizeof($finaltab); $q++){
           if ($k < 5){
               $update=User::where('id',$finaltab[$q])->update(['team'=>$team]);
               $k++;
           }
           else{
               $team++;
               $update=User::where('id',$finaltab[$q])->update(['team'=>$team]);
               $k=1;
           }
       }
       return view('layouts/admin');
       
    }
    
    public function show(){
        $grostab=[];
        $req2=User::select('team')->distinct('team')->get();
        for ($i=0;$i<sizeof($req2);$i++){
            $team=$req2[$i]['team'];
            $req3=User::where('team',$team)->get();
            array_push($grostab,$req3);   
        }

                return view('equipes')->withGrostab($grostab);
    }

}