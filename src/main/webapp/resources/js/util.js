//paging
function makePaginationHtml(listRowCount, pageCountPerBlock, currentPageIndex, totalListItemCount, htmlTargetId, listFunc){
   
   var targetUI = $("#" + htmlTargetId);
   
   var pageCount = Math.ceil(totalListItemCount/listRowCount);
   var pageBlockCount = Math.ceil(pageCount/pageCountPerBlock);//commend 처리 되어있었음.

   var startPageIndex = 0;
   if( (currentPageIndex % pageCountPerBlock) == 0 ){ //10, 20...맨마지막
      startPageIndex = ((currentPageIndex / pageCountPerBlock)-1)*pageCountPerBlock + 1
   }else{
      startPageIndex = Math.floor(currentPageIndex / pageCountPerBlock)*pageCountPerBlock + 1
   }
   
   var endPageIndex = 0;
   if( (currentPageIndex % pageCountPerBlock) == 0 ){ //10, 20...맨마지막
      endPageIndex = ((currentPageIndex / pageCountPerBlock)-1)*pageCountPerBlock + pageCountPerBlock
   }else{
      endPageIndex = Math.floor(currentPageIndex / pageCountPerBlock)*pageCountPerBlock + pageCountPerBlock;
   }
   //var endPageIndex = Math.floor(currentPageIndex / pageCountPerBlock)*pageCountPerBlock + pageCountPerBlock;
   
   //var startListItemNo = (currentPageIndex - 1) * listRowCount;

   var prev;
   if( currentPageIndex <= pageCountPerBlock ){
      prev = false;
   }else{
      prev = true;
   }

   var next;
   if(endPageIndex > pageCount){
      endPageIndex = pageCount
      next = false;
   }else{
      next = true;
   }
   
   console.log("totalListItemCount : " + totalListItemCount);
   console.log("pageCount : " + pageCount);
   console.log("pageBlockCount : " + pageBlockCount);
   console.log("currentPageIndex : " + currentPageIndex);
   console.log("startPageIndex : " + startPageIndex);
   console.log("endPageIndex : " + endPageIndex);
   console.log("prev : " + prev);
   console.log("next : " + next);
   
   var paginationHtml =
      '<ul class="pagination pagination justify-content-center">';
   if(prev){
      paginationHtml += 
         '<li class="page-item">' +
         '<a class="page-link" href="javascript:movePage(' + (startPageIndex - 1) + ')" aria-label="Previous">' +
         '<span aria-hidden="true">&laquo;</span>' +
         '</a>' +
         '</li>';
   }
   
   for(var i=startPageIndex; i<=endPageIndex; i++){
//      console.log('*** ' + i);
//      console.log(currentPageIndex);
      
      if( i == currentPageIndex ){
         paginationHtml += 
            '<li class="page-item active"><a class="page-link" href="javascript:movePage(' + i + ')">' + i + '</a></li>';         
      }else{
         paginationHtml += 
            '<li class="page-item"><a class="page-link" href="javascript:movePage(' + i + ')">' + i + '</a></li>';         
      }
   }
   
   if(next){
      paginationHtml += 
         '<li class="page-item">' +
         '<a class="page-link" href="javascript:movePage(' + (endPageIndex + 1) + ')" aria-label="Next">' +
         '<span aria-hidden="true">&raquo;</span>' +
         '</a>' +
         '</li>';
   }
   paginationHtml += '</ul>';

   targetUI.html("");
   targetUI.append(paginationHtml);
   
}
















