<?php

class __Mustache_f35cb864d4714dddd7040309a7cb3ea7 extends Mustache_Template
{
    private $lambdaHelper;

    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $this->lambdaHelper = new Mustache_LambdaHelper($this->mustache, $context);
        $buffer = '';

        $buffer .= $indent . '
';
        if ($parent = $this->mustache->loadPartial('core_message/message_drawer_view_overview_section')) {
            $context->pushBlockContext(array(
                'region' => array($this, 'block20c51b28057bc9faaeafe6f632069c2d'),
                'title' => array($this, 'block7b71e0e7e676fe211d1f732c3cef845f'),
                'placeholder' => array($this, 'blockE9b23ea6ffe7cff2e099ad2c26b6072a'),
                'emptymessage' => array($this, 'block2040cc56f1d1ac2d7c8efec212371aa5'),
            ));
            $buffer .= $parent->renderInternal($context, $indent);
            $context->popBlockContext();
        }

        return $buffer;
    }

    private function section70ba859dcad5c7079590b52af8ec5e2e(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' groupmessages, core_message ';
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
                
                $buffer .= ' groupmessages, core_message ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function section2119d1f764f4a635892e7279213db431(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' nogroupmessages, core_message ';
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
                
                $buffer .= ' nogroupmessages, core_message ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    public function block20c51b28057bc9faaeafe6f632069c2d($context)
    {
        $indent = $buffer = '';
        $buffer .= $indent . 'view-overview-group-messages';
    
        return $buffer;
    }

    public function block7b71e0e7e676fe211d1f732c3cef845f($context)
    {
        $indent = $buffer = '';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->section70ba859dcad5c7079590b52af8ec5e2e($context, $indent, $value);
    
        return $buffer;
    }

    public function blockE9b23ea6ffe7cff2e099ad2c26b6072a($context)
    {
        $indent = $buffer = '';
        $buffer .= '        <div class="text-center py-2">';
        if ($partial = $this->mustache->loadPartial('core/loading')) {
            $buffer .= $partial->renderInternal($context);
        }
        $buffer .= '</div>
';
    
        return $buffer;
    }

    public function block2040cc56f1d1ac2d7c8efec212371aa5($context)
    {
        $indent = $buffer = '';
        $buffer .= $indent . '        <p class="text-muted mt-2">';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->section2119d1f764f4a635892e7279213db431($context, $indent, $value);
        $buffer .= '</p>
';
    
        return $buffer;
    }
}
