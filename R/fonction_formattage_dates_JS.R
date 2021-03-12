# https://www.w3schools.com/js/js_date_methods.asp
# https://stackoverflow.com/questions/1643320/get-month-name-from-date
# https://stackoverflow.com/questions/24998624/day-name-from-date-in-js
# https://stackoverflow.com/questions/9045868/javascript-date-getweek

#' Title
#'
#' @return
#' @export
#'
#' @examples
format_horaire <- function() {
  '{H}:{mm}'
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
format_horaire_popup <- function() {
  htmlwidgets::JS(
    'function(value){
    let d = new Date(value.value[0]);
    let h = d.getHours();
    let m = d.getMinutes();
    let label = "";
    if (m < 10){
          label = h + ":0" + m;
        }
    else {
          label = h + ":" +m;
    }
    return label;}'
  )

}
#' Title
#'
#' @return
#' @export
#'
#' @examples
format_nom_jour_numero_jour_short <- function() {
  htmlwidgets::JS(
    "function(value){
      let d = new Date(value);
      let y = d.getDate();

      let wkday = d.toLocaleString('default', { weekday: 'short' });

      let label = wkday + ' ' + y;
      return label;}"
  )
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
format_nom_jour_numero_jour_long <-  function() {
  htmlwidgets::JS(
    "function(value){
      let d = new Date(value);
      let y = d.getDate();

      let wkday = d.toLocaleString('default', { weekday: 'long' });

      let label = wkday + ' ' + y;
      return label;}"
  )
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
format_nom_mois_annee_short <-  function() {
  htmlwidgets::JS(
    "function(value){
      let d = new Date(value);
      let y = d.getFullYear();

      let month = d.toLocaleString('default', { month: 'short' });

      let label = month + ' ' + y;
      return label;}"
  )
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
format_nom_mois_annee_long <-  function() {
  htmlwidgets::JS(
    "function(value){
      let d = new Date(value);
      let y = d.getFullYear();

      let month = d.toLocaleString('default', { month: 'long' });

      let label = month + ' ' + y;
      return label;}"
  )
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
format_isoweek <-  function() {
  htmlwidgets::JS(
    "function(value){

    let dowOffset = 1;
    let d = new Date(value);
    let fullY = d.getFullYear();
    let newYear = new Date(fullY,0,1);
    let day = newYear.getDay() - dowOffset; //the day of week the year begins on
    day = (day >= 0 ? day : day + 7);
    let daynum = Math.floor((d.getTime() - newYear.getTime() -
    (d.getTimezoneOffset()-newYear.getTimezoneOffset())*60000)/86400000) + 1;
    let weeknum;
    //if the year starts before the middle of a week
    if(day < 4) {
        weeknum = Math.floor((daynum+day-1)/7) + 1;
        if(weeknum > 52) {
            nYear = new Date(d.getFullYear() + 1,0,1);
            nday = nYear.getDay() - dowOffset;
            nday = nday >= 0 ? nday : nday + 7;
            /*if the next year starts before the middle of
              the week, it is week #1 of that year*/
            weeknum = nday < 4 ? 1 : 53;
            weeknum = '' + weeknum;
        }
    }
    else {
        weeknum = Math.floor((daynum+day-1)/7);
                    weeknum = '' + weeknum;

    }

    weeknum = 'S' + weeknum;

    return weeknum;}"
  )
}
###########
### OLD ###
###########

extract_hour_from_date <- htmlwidgets::JS(
  'function(value){
      let d = new Date(value);
      let h = d.getHours();
      let m = d.getMinutes();
      let label = "";
      if (m < 10){
          label = h + ":0" + m;
        }
      else {
          label = h + ":" +m;
        }
      return label;}'
)


affichage_heure_popup <- htmlwidgets::JS(
  'function(value){
    let d = new Date(value.value[0]);
    let h = d.getHours();
    let m = d.getMinutes();
    let label = "";
    if (m < 10){
          label = h + ":0" + m;
        }
    else {
          label = h + ":" +m;
    }
    return label;}'
)

