//window.location.reload(true); 캐쉬에 저장 ....
//alert(1);


//나중에 따로 빼기....
var ld = [ //[ '지점', '목표 금액', '현재 금액 ', '목표M/S','현재M/S' ], 
            [ '지점', '목표 금액', '현재 금액 ', '목표M/S', '현재M/S' ],
			[ "강남(테스트)", 1321, 231, 31.1,13.15 ], //"강남", 
			[ "서초(문정수)", 1332, 221, 26.7,14.28 ], //"서초",
			[ "용산(문정수)", 1523, 361, 34.8,22.58 ], //"용산", 
			[ "분당(이주훈)", 1269, 659, 30.3,24.39 ], //"분당", 
			[ "부산(이일형)", 507, 622, 30.9,28.57 ], //"부산", 
			[ "광주(이주훈)", 886, 191, 27.3,36.36], //"광주",			
			[ "인천(이일형)", 1040, 88, 31.4,40 ], //"인천", 
			[ "대구(문정수)", 584, 371, 30.8,28.57], //"대구",
			[ "대전(이주훈)", 189, 38, 17.9,8.33 ], //"대전",
			//[ "합계"     , 8870, 2773, 30.0,24.18 ], //"합계",
         ];



var td = [ //[ '지점', '목표 금액', '현재 금액 ', '목표M/S','현재M/S' ],
            [ '지점', '목표 금액', '현재 금액 ', '목표M/S', '현재M/S' ],
			[ "강남(테스트)", 307, 172, 24.5,22.7],
			[ "서초(이일형)", 243, 90, 21.3,9.7], 
			[ "용산(이일형)", 294, 108, 24.0,16.0 ], 
			[ "분당(이주훈)", 292, 109, 26.7,12.0 ],
			[ "부산(이일형)", 68,  149, 32.4,22.2 ], 
			[ "광주(이주훈)", 230, 21, 17.6,50.0 ], 
			[ "인천(이일형)", 298, 218, 33.3,17.6 ],			
			[ "대구(문정수)", 178, 93, 27.3,9.1 ],
			[ "대전(이주훈)", 65, 77, 27.3,54.5 ],
			//[ "합계"     , 1975, 1041, 25.0,18.9 ], //"합계",
       ];



var staffData = [ //[ '지점', '목표 금액', '현재 금액 ', '목표M/S','현재M/S' ],
           [ '지점', '목표 금액', '현재 금액 ', '달성율(%)' ],
			[ "표제헌", 1, 1, 24.5],
			[ "문정수", 2, 2, 21.3], 
			[ "이일형", 3, 3, 24.0 ], 
			[ "이주훈", 4, 4, 26.7 ],
			[ "합계", 5,  5, 32.4], 
			//[ "합계"     , 1975, 1041, 25.0,18.9 ], //"합계",
      ];



var stackedData1 = [ //[ '지점', '목표 금액', '현재 금액 ', '목표M/S','현재M/S' ], 
           [ '지점', '누적 금액', '목표 차액 ', '목표M/S', '평균M/S' ],
           [ "4월", 1321, -231, 31.1,13.15 ], //	
           [ "5월", 1321, 231, 31.1,13.15 ], //	
           [ "6월", 1321, 231, 31.1,13.15 ], //
			[ "7월", 1321, 231, 31.1,13.15 ], //
			[ "8월", 1332, 221, 26.7,14.28 ], //
			[ "9월", 1523, 361, 34.8,22.58 ], //
			[ "10월", 1269, 659, 30.3,24.39 ], //
			[ "11월", 507, 622, 30.9,28.57 ], //
			[ "12월", 886, 191, 27.3,36.36], //	
			[ "1월", 1040, 88, 31.4,40 ], //
			[ "2월", 584, 371, 30.8,28.57], //
			[ "3월", 189, 38, 17.9,8.33 ], //
        ];

var stackedData2= [ //[ '지점', '목표 금액', '현재 금액 ', '목표M/S','현재M/S' ], 
                     [ '지점', '누적 금액', '목표 차액 ', '목표M/S', '평균M/S' ],
                     [ "4월", 1321, 231, 31.1,13.15 ], //"강남",		
                     [ "5월", 1321, 231, 31.1,13.15 ], //"강남",		
                     [ "6월", 1321, 231, 31.1,13.15 ], //"강남",           
          			[ "7월", 1321, 231, 31.1,13.15 ], //"강남", 
          			[ "8월", 1332, 221, 26.7,14.28 ], //"서초",
          			[ "9월", 1523, 361, 34.8,22.58 ], //"용산", 
          			[ "10월", 1269, 659, 30.3,24.39 ], //"분당", 
          			[ "11월", 507, 622, 30.9,28.57 ], //"부산", 
          			[ "12월", 886, 191, 27.3,36.36], //"광주",			
          			[ "1월", 1040, 88, 31.4,40 ], //"인천", 
          			[ "2월", 584, 371, 30.8,28.57], //"대구",
          			[ "3월", 189, 38, 17.9,8.33 ], //"대전",
          			//[ "합계"     , 8870, 2773, 30.0,24.18 ], //"합계",
                  ];

//나중에 따로 빼기....
var wl1 = [ [ '지점', '목표 금액', '달성 금액 '], [ "목표금액 합산", 1, 2 ], ];
var wl2 = [ [ '지점', '목표 M/S', '달성 M/S '], [ "목표 평균M/S", 30.6, 52.5],  ];
var wt1 = [ [ '지점', '목표 금액', '달성 금액 '], [ "목표금액 합산", 2602, 383 ], ];
var wt2 = [ [ '지점', '목표 M/S', '달성 M/S '], [ "목표 평균M/S", 26.0, 15.5], ];


var wd = [ //[ '지점', '목표 금액', '현재 금액 ', '목표M/S','현재M/S' ], 
			[ "첫달", 307, 172, 24.5,22.7],
			[ "둘째달", 243, 90, 21.3,9.7], 
			[ "셋째달", 294, 108, 24.0,16.0 ], 
      ];


//google.charts.load('current', {'packages':["corechart", "gauge"]});
google.charts.load('current', {'packages':['corechart', 'bar']});

Date.prototype.yyyymmdd = function() {
	   var yyyy = this.getFullYear().toString();
	   var mm = (this.getMonth()+1).toString(); // getMonth() is zero-based
	   var dd  = this.getDate().toString();
	   return yyyy +"-"+ (mm[1]?mm:"0"+mm[0]) +"-"+ (dd[1]?dd:"0"+dd[0]); // padding
	};	
	
var d = new Date();
d.setDate(d.getDate()-1);
var currentMonth = (d.getMonth()+1); //0=January, 1=February etc.
//alert(d);
//alert(currentMonth);
var today=d.yyyymmdd().replace(/-/gi,"");//.replace("-","");
/*
 * g : 발생할 모든 pattern에 대한 전역 검색
 * i : 대/소문자 구분 안함
 * m : 여러 줄 검색
 */

var arrays = new Array( 
		new Array(20), 
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20),
		new Array(20)
	);




