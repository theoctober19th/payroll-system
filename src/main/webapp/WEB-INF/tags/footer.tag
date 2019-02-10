</div>
</div>

<!-- footer content -->

        <footer>
          <div class="copyright-info">
            <p class="pull-right">This is a footer</a>  
            </p>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
      <!-- /page content -->

    </div>

  </div>

  <div id="custom_notifications" class="custom-notifications dsp_none">
    <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
    </ul>
    <div class="clearfix"></div>
    <div id="notif-group" class="tabbed_notifications"></div>
  </div>

  <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>

  <!-- gauge js -->
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/gauge/gauge.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/gauge/gauge_demo.js"></script>
  <!-- bootstrap progress js -->
  <script src="${pageContext.request.contextPath }/resources/js/progressbar/bootstrap-progressbar.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/nicescroll/jquery.nicescroll.min.js"></script>
  <!-- icheck -->
  <script src="${pageContext.request.contextPath }/resources/js/icheck/icheck.min.js"></script>
  <!-- daterangepicker -->
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/moment/moment.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/datepicker/daterangepicker.js"></script>
  <!-- chart js -->
  <script src="${pageContext.request.contextPath }/resources/js/chartjs/chart.min.js"></script>

  <script src="${pageContext.request.contextPath }/resources/js/custom.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>


  <!-- flot js -->
  <!--[if lte IE 8]><script type="text/javascript" src="js/excanvas.min.js"></script><![endif]-->
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/flot/jquery.flot.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/flot/jquery.flot.pie.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/flot/jquery.flot.orderBars.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/flot/jquery.flot.time.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/flot/date.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/flot/jquery.flot.spline.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/flot/jquery.flot.stack.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/flot/curvedLines.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/flot/jquery.flot.resize.js"></script>
  

 
  <!-- datepicker -->
  <script type="text/javascript">
    $(document).ready(function() {

      var cb = function(start, end, label) {
        console.log(start.toISOString(), end.toISOString(), label);
        $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        //alert("Callback has fired: [" + start.format('MMMM D, YYYY') + " to " + end.format('MMMM D, YYYY') + ", label = " + label + "]");
      }

      var optionSet1 = {
        startDate: moment().subtract(29, 'days'),
        endDate: moment(),
        minDate: '01/01/2012',
        maxDate: '12/31/2015',
        dateLimit: {
          days: 60
        },
        showDropdowns: true,
        showWeekNumbers: true,
        timePicker: false,
        timePickerIncrement: 1,
        timePicker12Hour: true,
        ranges: {
          'Today': [moment(), moment()],
          'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days': [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month': [moment().startOf('month'), moment().endOf('month')],
          'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        opens: 'left',
        buttonClasses: ['btn btn-default'],
        applyClass: 'btn-small btn-primary',
        cancelClass: 'btn-small',
        format: 'MM/DD/YYYY',
        separator: ' to ',
        locale: {
          applyLabel: 'Submit',
          cancelLabel: 'Clear',
          fromLabel: 'From',
          toLabel: 'To',
          customRangeLabel: 'Custom',
          daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
          monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
          firstDay: 1
        }
      };
      $('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));
      $('#reportrange').daterangepicker(optionSet1, cb);
      $('#reportrange').on('show.daterangepicker', function() {
        console.log("show event fired");
      });
      $('#reportrange').on('hide.daterangepicker', function() {
        console.log("hide event fired");
      });
      $('#reportrange').on('apply.daterangepicker', function(ev, picker) {
        console.log("apply event fired, start/end dates are " + picker.startDate.format('MMMM D, YYYY') + " to " + picker.endDate.format('MMMM D, YYYY'));
      });
      $('#reportrange').on('cancel.daterangepicker', function(ev, picker) {
        console.log("cancel event fired");
      });
      $('#options1').click(function() {
        $('#reportrange').data('daterangepicker').setOptions(optionSet1, cb);
      });
      $('#options2').click(function() {
        $('#reportrange').data('daterangepicker').setOptions(optionSet2, cb);
      });
      $('#destroy').click(function() {
        $('#reportrange').data('daterangepicker').remove();
      });
    });
  </script>
  <script>
    NProgress.done();
  </script>
  <!-- /datepicker -->
  <!-- /footer content -->
</body>

</html>