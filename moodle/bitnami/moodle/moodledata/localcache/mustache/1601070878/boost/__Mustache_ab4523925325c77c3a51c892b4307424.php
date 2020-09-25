<?php

class __Mustache_ab4523925325c77c3a51c892b4307424 extends Mustache_Template
{
    private $lambdaHelper;

    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $this->lambdaHelper = new Mustache_LambdaHelper($this->mustache, $context);
        $buffer = '';

        $buffer .= $indent . '
';
        $buffer .= $indent . '<div class="hidden border-bottom px-2 py-3" aria-hidden="true" data-region="view-settings">
';
        $buffer .= $indent . '    <div class="d-flex align-items-center">
';
        $buffer .= $indent . '        <div class="align-self-stretch" >
';
        $buffer .= $indent . '            <a class="h-100 d-flex mr-2 align-items-center" href="#" data-route-back>
';
        if ($partial = $this->mustache->loadPartial('core_message/message_drawer_icon_back')) {
            $buffer .= $partial->renderInternal($context, $indent . '                ');
        }
        $buffer .= $indent . '            </a>
';
        $buffer .= $indent . '        </div>
';
        $buffer .= $indent . '        <div>
';
        $buffer .= $indent . '            ';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->section89fe6ec2ad927929ef01bc4d6a8446c4($context, $indent, $value);
        $buffer .= '
';
        $buffer .= $indent . '        </div>
';
        $buffer .= $indent . '    </div>
';
        $buffer .= $indent . '</div>
';

        return $buffer;
    }

    private function section89fe6ec2ad927929ef01bc4d6a8446c4(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' settings, core ';
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
                
                $buffer .= ' settings, core ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

}
