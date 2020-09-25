<?php

class __Mustache_99feac5907242ea607980e74a5d8579e extends Mustache_Template
{
    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $buffer = '';

        $buffer .= $indent . '<div class="d-flex">
';
        $buffer .= $indent . '    <div class="align-self-stretch" >
';
        $buffer .= $indent . '        <a class="h-100 mr-2 d-flex align-items-center" href="#" data-route-back>
';
        if ($partial = $this->mustache->loadPartial('core_message/message_drawer_icon_back')) {
            $buffer .= $partial->renderInternal($context, $indent . '            ');
        }
        $buffer .= $indent . '        </a>
';
        $buffer .= $indent . '    </div>
';
        $buffer .= $indent . '    <div
';
        $buffer .= $indent . '        class="ml-2 rounded-circle bg-pulse-grey align-self-center"
';
        $buffer .= $indent . '        style="height: 38px; width: 38px"
';
        $buffer .= $indent . '    >
';
        $buffer .= $indent . '    </div>
';
        $buffer .= $indent . '    <div class="ml-2 " style="flex: 1">
';
        $buffer .= $indent . '        <div
';
        $buffer .= $indent . '            class="mt-1 bg-pulse-grey w-75"
';
        $buffer .= $indent . '            style="height: 16px;"
';
        $buffer .= $indent . '        >
';
        $buffer .= $indent . '        </div>
';
        $buffer .= $indent . '    </div>
';
        $buffer .= $indent . '    <div
';
        $buffer .= $indent . '        class="ml-2 bg-pulse-grey align-self-center"
';
        $buffer .= $indent . '        style="height: 16px; width: 20px"
';
        $buffer .= $indent . '    >
';
        $buffer .= $indent . '    </div>
';
        $buffer .= $indent . '</div>
';

        return $buffer;
    }
}
