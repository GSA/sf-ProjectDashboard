/*Project Dashboard CSS*/
/**Author Ramesh Dugar**/
.usa{
	background-color: #112E51;
	padding-top: 2rem;
	padding-bottom: 3.7rem;
	height: 525px;
	/*width: 1470px;*/
	width:100%;
}
.title{
	color: #02BFE7;
	padding-top: 0px;
	font-size: 40px;
	font-family: Merriweather;
	margin-bottom: 40px;
	text-align: center;
	font-weight:Lighter;
}

.Wrapper-KeyProject{
	margin-left: 150px;
	margin-right: 150px;
	display: inline-flex;
}

.No-KeyProject{
	display: block;
	background-color: #FFF1D2;
	border:1px solid #F1F1F1;
	width:800px;
	text-align: center;
	padding-top: 10px;
	max-height: 200px;
	font-family: Merriweather;
	font-size: 25px;
	color:#212121;
	margin-left: 195px;
	border-radius:5px;
	font-weight: 700;
}

.Content-KeyProject{
	display:inline-block;
	Margin-left:10px;
	Margin-Right:10px;
	max-width: 328px;
	max-height: 285px;
}

.Project-ActionItems{
	/*height: 22px;*/
	display: inline-block;
	width: 138px;
	margin-left: 218px;
	padding-bottom: 1px;
}

.Content-ActionItems{
	background-color: #E31C3D;
	color: #FFFFFF;
	/*cursor: pointer;
	cursor: hand;*/
	padding-top: 3px;
	padding-right: 5px;
	padding-left: 5px;
	border-top-left-radius: 2px;
	border-top-right-radius: 2px;
	font-family: Source Sans Pro;
	font-size: 15px;
	padding-bottom: 2px;
	font-weight: 300;
}
.Project-Name{
	height: 114px;
	width: 328px;
	background-color:#FDB81E;
	border-top-left-radius: 3px;
}

.KeyProject-Name{
	font-size:17px;
	font-family: Merriweather;
	line-height: 22px;
	color: #212121;
	margin-top: 50px;
	position: absolute;
	padding-left: 29px;
	max-width: 300px;
	font-weight: 700;
	-webkit-line-clamp: 2;
    overflow: hidden;
    -webkit-box-orient: vertical;
    text-overflow: ellipsis;
   /* white-space: nowrap;*/
	display: -webkit-box;
}

.Status-Icon{
	float:left;
	margin-left:25px;
	margin-top:21px;
}

.Status-Name{
	text-transform: uppercase;
	font-family: Source Sans Pro;
	float:left;
	margin-left:10px;
	margin-top:21px;
	color:black;
	font-size:15px;
}

.Project-Title{
	padding-top: 50px;
	font-family: Merriweather-Bold;
	font-size: 17px;
	color: #212121;
	line-height: 22px;
	display: inline-block;
}
.Project-Owner{
	 height: 88px;
	width: 328px;
	background-color:white;
	/*border-bottom:1px #EEEEEE solid*/
}

.Owner-Bubble{
	color:black;
	font-size:15px;
	width:70px;
	height:24px;
	background-color:#E4E2E0;
	float:left;
	margin-left:15px;
	border-radius:5px;
	padding-top:2px;
	margin-top:15px;
	text-align: center;

}

.Deadline-Bubble{
	color:black;
	font-size:15px;
	width:90px;
	height:24px;
	background-color:#E4E2E0;
	float:right;
	margin-right:15px;
	border-radius:5px;
	padding-top:2px;
	margin-top:15px;
	text-align: center;
}

.Owner-Content{
	color:#212121;
	font-size:17px;
	float:left;
	margin-left:-70px;
	margin-top:54px;
	font-family: Source Sans Pro;
	line-height: 18px;
	font-weight: 700;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 185px;
	overflow-x:hidden;
	overflow-y:hidden;
}

.Deadline-Content{
	color:#212121;
	font-size:17px;
	float:right;
	margin-right:-65px;
	margin-top:54px;
	font-family: Source Sans Pro;
}

.Project-Tracker{
	 height: 84px;
	 width: 328px;
	 background-color:white;
	 position:relative;
	 display: inline-flex;
	 /*border-bottom:1px;*/
}

.Concept-Approval{
	height: 84px;
	width: 82px;
	display: inline-block;
	/*border:1px #EEEEEE solid;*/
	border-right:1px #EEEEEE solid;
	border-top: 1px #EEEEEE solid;
	border-bottom: 1px #EEEEEE solid;
}

.Planning{
	height: 84px;
	width: 82px;
	display: inline-block;
	border:1px #EEEEEE solid;

}

.Initiating{
	height: 84px;
	width: 82px;
	display: inline-block;
	border:1px #EEEEEE solid;
}

.Executing{
	height: 84px;
	width: 82px;
	display: inline-block;
	border-left:1px #EEEEEE solid;
	border-top: 1px #EEEEEE solid;
	border-bottom: 1px #EEEEEE solid;
}
.Risk{
	background-color: #FDB81E;
}

.Track{
	background-color: #4AA564;
}

.Complete{
	background-color: #02BFE7;
}

.Due{
	background-color: #E31C3D;
}
.tracker-Icon{
	margin-left: 28px;
	margin-right: 28px;
	margin-top: 15px;
}

.Tracker-Phase-one{
	margin-top: 3px;
	margin-left: 15px;
	margin-right: 15px;
	font-family: Source Sans Pro;
	font-size: 14px;
	color: #212121;
	line-height: 14px;
	position: absolute;
    max-width: 72px;
    max-height: 32px;
    -webkit-line-clamp: 2;
    overflow: hidden;
    text-overflow: ellipsis;
}

.Tracker-Phase-two{
	margin-top: 3px;
	margin-left: 15px;
	margin-right: 15px;
	font-family: Source Sans Pro;
	font-size: 14px;
	color: #212121;
	line-height: 15px;
	position: absolute;
    max-width: 78px;
    max-height: 32px;
    -webkit-line-clamp: 2;
    overflow: hidden;
    text-overflow: ellipsis
}

.KeyProject-Complete-Bckgrnd{
	position: absolute;
	background-color: rgba(17,46,81,0.50);
	height:84px;
	width: 328px;
	margin-left: -328px;
	opacity: 1;
}

.KeyProject-Complete-Text{

	color:#FFFFFF;
	font-size: 18px;
	font-family: SourceSansPro-Regular;
	margin-top: -25px;
	margin-left: 110px;
}

.All-Projects{
	max-width: 1004px;
	margin-left: 155px;
	margin-bottom: 30px;
	margin-top: 20px;
}

.Completed-Projects{
	max-width: 1004px;
	margin-left: 155px;
	margin-right: 181px;
	margin-bottom: 100px;
}

.All-Projects-Title{
	font-family: Merriweather;
	font-size: 20px;
	line-height: 26px;
	color:#172D52;
	font-weight: 700;
}

.Completed-Projects-Title{
	font-family: Merriweather;
	font-size: 20px;
	line-height: 26px;
	color:green;
	font-weight: 700;
}

.All-Projects-Status{

	padding-left: 6px;
	padding-right: 6px;
	border-radius: 4px;
	text-transform: uppercase;
}

.All-Projects-ActionItems{
	background-color: #E31C3D;
	padding-left: 11px;
	padding-right: 11px;
	padding-bottom: 4px;
	padding-top: 4px;
	border-radius: 20px;
	color: #FFFFFF;
	cursor: pointer;
	cursor: hand;
	font-size: 16px;
	/*font-family: Merriweather;*/
}

.All-Projects-Name{
	font-family: Merriweather;
	font-size: 15px;
	color:#0071BC;
	line-height: 22px;
	font-weight: 700;
	cursor: pointer;
	cursor: hand;
	/*padding-left: 8px;*/
}

.All-Projects-Owner{
	font-family: Merriweather;
	font-size: 13px;
	color: #0071BC;
	line-height: 18px;

}

.All-Projects-Deadline{
	font-family: Merriweather;
	font-size: 14px;
	color: #212121;
	line-height: 18px;
	padding-left: 10px;

}

.All-Projects-Phase{
	font-family: Merriweather;
	font-size: 14px;
	color: #212121;
	line-height: 18px;
}
.All-Project-DetailView-Title{
	font-family: Merriweather;
	font-size: 17px;
	color: #205493;
	line-height: 22px;
	font-weight: 700;
	margin-bottom: 20px;
	margin-top: 15px;
}

.All-Project-DetailView-Escalations{
	margin-left: 38px;
	margin-top: 10px;
	margin-bottom: 15px;
	font-family: Source Sans Pro;
	font-size: 17px;
	color: #212121;
	line-height: 25.5px;
}

.Detail-Content{
	font-family: Source Sans Pro;
	font-size: 14px;
	color: #212121;
	line-height: 20px;

}

table{
	margin: 0em;
}

table thead tr{
	background-color: #FFFFFF;
}

table td{
	border-bottom:5px solid white;
	border-top:none;
	border-right:none;
	border-left:none;
	padding: 0.1em;
	padding-left: 17px;
}


table th{
	border:none;
	font-family:Source Sans Pro;
	font-size: 19px;
	font-weight: 700;
	color:#212121;
}

tbody tr{
	background-color: #F1F1F1;
}
.tr1{
	background-color: #FFFFFF;
}

#container{
	width:100%;
}

#left{
	float:left;
	width: 300px;
	word-break: break-word;
}

#right{
	float:right;
	margin-right: 20px;
	width: 300px;
	word-break: break-word;
}

#center{
	margin-left:329px;
	width: 300px;
	word-break: break-word;
}

.tablesorter thead tr th.headerSortUp:after,
.tablesorter thead tr th.headerSortDown:after,
.tablesorter thead tr th.header:after {
  font-family: FontAwesome;
	cursor: pointer;
	cursor: hand;
}

.tablesorter thead tr th.header:after {
  content: "\f0dc";
  padding-left:8px;
	cursor: pointer;
	cursor: hand;
}

.tablesorter thead tr th.headerSortUp:after {
  content: "\f0de";
  padding-left:8px;
	cursor: pointer;
	cursor: hand;
}

.tablesorter thead tr th.headerSortDown:after {
  content: "\f0dd";
  padding-left:8px;
	cursor: pointer;
	cursor: hand;
}

.clickable {
	cursor: pointer;
	cursor: hand;
	/*margin-right: 17px;
	margin-bottom: 17px;*/
	padding-bottom: 10px;
	padding-top: 10px;
	Margin-Right: 10px;
	max-width:19px;
}

.keyProject-Title{
	text-align: left;
	margin-left: 160px;
	color:#FFFFFF;
	font-size: 20px;
	font-family:Merriweather;
	padding-bottom:10px;
}

.Blocker-DetailView-Title{
	border-left: 4px solid #E31C3D;
	padding-left: 10px;
	font-family: Source Sans Pro;
	font-size: 19px;
	color: #212121;
	width:316px;
}

.ActionItems-DetailView-Title{
	border-left: 4px solid #FDB81E;
	padding-left: 10px;
	font-family: Source Sans Pro;
	font-size: 19px;
	color: #212121;
	width: 316px;
}

.Accomplishments-DetailView-Title{
	border-left: 4px solid #4AA564;
	padding-left: 10px;
	font-family: Source Sans Pro;
	font-size: 19px;
	color: #212121;
	width: 316px;
	margin-right: 20px;
}

#container{
	margin-top: 10px;
	margin-left: 2px;
	margin-bottom: 15px;
}

.All-Project-DetailView-NeedAttention{
	margin-left: 10px;
	font-family: Merriweather;
	font-size: 25px;
	color:#212121;
}

.All-Project-DetailView-container{
	display: block;
	background-color: #FFF1D2;
	border:1px solid #F1F1F1;
	width:960px;
	padding-top: 10px;
}