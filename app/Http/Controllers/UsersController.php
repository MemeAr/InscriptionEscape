<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
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
        return $tabDTA;
    }
}
