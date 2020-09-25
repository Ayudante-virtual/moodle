<?php

class __Mustache_00409185605b29f924ecd2aa2b61c13f extends Mustache_Template
{
    private $lambdaHelper;

    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $this->lambdaHelper = new Mustache_LambdaHelper($this->mustache, $context);
        $buffer = '';

        $buffer .= $indent . '
';
        $buffer .= $indent . '<div
';
        $buffer .= $indent . '    class="view-conversation hidden h-100"
';
        $buffer .= $indent . '    aria-hidden="true"
';
        $buffer .= $indent . '    data-region="view-conversation"
';
        $buffer .= $indent . '    data-user-id="';
        $value = $this->resolveValue($context->findDot('loggedinuser.id'), $context);
        $buffer .= call_user_func($this->mustache->getEscape(), $value);
        $buffer .= '"
';
        $buffer .= $indent . '    data-midnight="';
        $value = $this->resolveValue($context->findDot('loggedinuser.midnight'), $context);
        $buffer .= call_user_func($this->mustache->getEscape(), $value);
        $buffer .= '"
';
        $buffer .= $indent . '    style="overflow-y: auto; overflow-x: hidden"
';
        $buffer .= $indent . '>
';
        $buffer .= $indent . '    <div class="position-relative h-100" data-region="content-container" style="overflow-y: auto; overflow-x: hidden">
';
        $buffer .= $indent . '        <div class="p-3 text-center hidden" data-region="contact-request-sent-message-container">
';
        $buffer .= $indent . '            <p class="m-0">';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->sectionCa904a119b3dac50271d2b70edc496a4($context, $indent, $value);
        $buffer .= '</p>
';
        $buffer .= $indent . '            <p class="font-italic font-weight-light" data-region="text"></p>
';
        $buffer .= $indent . '        </div>
';
        $buffer .= $indent . '        <div class="content-message-container hidden h-100 px-2 pb-2 pt-0" data-region="content-message-container" role="log" style="overflow-y: auto; overflow-x: hidden">
';
        $buffer .= $indent . '            <div class="hidden text-center p-3" data-region="more-messages-loading-icon-container">';
        if ($partial = $this->mustache->loadPartial('core/loading')) {
            $buffer .= $partial->renderInternal($context);
        }
        $buffer .= '</div>
';
        $buffer .= $indent . '        </div>
';
        $buffer .= $indent . '        <div class="p-4 w-100 h-100 hidden position-absolute" data-region="confirm-dialogue-container" style="top: 0; background: rgba(0,0,0,0.3);">
';
        if ($partial = $this->mustache->loadPartial('core_message/message_drawer_view_conversation_body_confirm_dialogue')) {
            $buffer .= $partial->renderInternal($context, $indent . '            ');
        }
        $buffer .= $indent . '        </div>
';
        $buffer .= $indent . '        <div class="px-2 pb-2 pt-0" data-region="content-placeholder">
';
        if ($partial = $this->mustache->loadPartial('core_message/message_drawer_view_conversation_body_placeholder')) {
            $buffer .= $partial->renderInternal($context, $indent . '            ');
        }
        $buffer .= $indent . '        </div>
';
        $buffer .= $indent . '    </div>
';
        $buffer .= $indent . '</div>
';

        return $buffer;
    }

    private function sectionCa904a119b3dac50271d2b70edc496a4(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' contactrequestsent, core_message ';
            $result = call_user_func($value, $source, $this->lambdaHelper);
            if (strpos($result, '{{') === false) {
                $buffer .= $result;
            } else {
                $buffer .= $this->mustache
                    ->loadLambda((string) $result)
                    ->renderInternal($context);
            }
        } elseif (!empty($value)) {
            $values = $this->isIterable($value) ? $value : array($value);
            foreach ($values as $value) {
                $context->push($value);
                
                $buffer .= ' contactrequestsent, core_message ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

}
