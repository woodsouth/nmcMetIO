% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/retrieve_cimiss_server.R
\name{cimiss_obs_by_time_range_and_staIds}
\alias{cimiss_obs_by_time_range_and_staIds}
\title{Retrieve station records from CIMISS by time and station ID.}
\usage{
cimiss_obs_by_time_range_and_staIds(
  timeRange,
  dataCode = "SURF_CHN_MUL_HOR_N",
  transType = TRUE,
  hourSeparate = NULL,
  minSeparate = NULL,
  eleValueRanges = NULL,
  orderby = NULL,
  limitCnt = NULL,
  elements = "Station_Id_C,Datetime,TEM",
  staIds = "54511"
)
}
\arguments{
\item{timeRange}{: time range for retrieve, "\link{YYYYMMDDHHMISS,YYYYMMDDHHMISS}",
like, "\link{201509010000,20150903060000}"}

\item{dataCode}{: dataset code, like "SURF_CHN_MUL_HOR", "SURF_CHN_MUL_HOR_N", and so on.}

\item{elements}{: elements for retrieve, 'ele1,ele2,...'}

\item{staIds}{: station ids, 'xxxxx,xxxxx,...'}

\item{transType:}{transform the return data frame's column type to datetime, numeric.}

\item{hourSeparate:}{hour space, \link{1, 24}, like 6: 0,6,12,18}

\item{minSeparate:}{minute space, \link{1, 60}, like 10: 0,10,20,30,40,50}

\item{eleValueRanges:}{elements value ranges, seperated by ';'
range, (a,) is >a, [a,) is >=a, (,a) is <a, (,a] is <=a,
(a,b) is >a & <b, [a,b) is >=a & <b, (a,b] is >a & <=b,
[a,b] is >=a & <=b
list, a,b,c;
e.g., "VIS:(,1000);RHU:(70,)", "Q_PRE_1h:0,3,4" is PRE quantity is credible.

[a,) is >=a, (,a) is <a, (,a]: R:a,)\%20is\%20\%3E=a,\%20(,a)\%20is\%20\%3Ca,\%20(,a
[a,b) is >=a & <b, (a,b]: R:a,b)\%20is\%20\%3E=a\%20&\%20\%3Cb,\%20(a,b
[a,b]: R:a,b}

\item{orderby:}{elements order, seperated by ',', like
"TEM:asc" is ascending order temperature,
"TEM:asc,SUM_PRE_1h:desc" is ascending order temperature first and descending PRE_1h.}

\item{limitCnt:}{the number of maximum returned records}
}
\value{
data frame of observations.
}
\description{
\preformatted{Retrieve data by cimiss music REST API.
Refer to http://10.20.76.55/cimissapiweb/index_index.action
}
}
\examples{
\dontrun{
  r1 <- cimiss_obs_by_time_range_and_staIds("[20060801000000,20060801000000]")
}

}
