<div>
    <div style="float:left;display:inline-block;margin-right:8px;height:30px;line-height:30px;">共有${pager.total}场考试</div>
    <div class="fpager">
        <div class="fpager-pages">
        <ul>
            <li class="fpager-prev"><a href="${url('pageindex='+pager.prepage)}" title="上一页">«</a></li>
            <%if pager.startpage>2 %>
            <li class="fpager-page active"><a href="${url('pageindex=1')}">1</a></li>
            <li class="fpager-ellipsis disabled"><a>...</a></li>
            <%/if %>
            <%for(pager.startpage,pager.endpage) %>
            <%if i==pager.pageindex %>
            <li class="fpager-page active"><a href="${url('pageindex='+i)}">${i}</a></li>
            <%else %>
            <li class="fpager-page"><a href="${url('pageindex='+i)}">${i}</a></li>
            <%/if %>
            <%/for %>
            <%if pager.endpage<pager.pagecount-2 %>
            <li class="fpager-ellipsis disabled"><a>...</a></li>
            <li class="fpager-page"><a href="${url('pageindex='+pager.pagecount)}">${pager.pagecount}</a></li>
            <%/if %>
            <li class="fpager-next"><a href="${url('pageindex='+pager.nextpage)}" title="下一页">»</a></li>
        </ul>
        </div>
    </div>
</div>