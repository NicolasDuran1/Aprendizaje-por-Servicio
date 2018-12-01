<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use HighCharts ,App\User;

class HighChartController extends Controller
{
     public function index(){
		$highcharts = HighCharts::database(User::all(), 'bar', 'highcharts')
	    	->elementLabel("Total")
	    	->GroupByYear();
	        return view('HighChart.index',compact('highcharts'));
    }
}
