<?php

class __Mustache_aa58745ab9dc7c51fd0bbc50df6b22f2 extends Mustache_Template
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
                'region' => array($this, 'block0d825094e3f87721e5aeacfebed18011'),
                'title' => array($this, 'block2789032f6e1f39c33680b8f8aa5c4b63'),
                'placeholder' => array($this, 'blockE9b23ea6ffe7cff2e099ad2c26b6072a'),
                'emptymessage' => array($this, 'blockF1a783f39318b625163dd0aed0582dc3'),
            ));
            $buffer .= $parent->renderInternal($context, $indent);
            $context->popBlockContext();
        }

        return $buffer;
    }

    private function sectionD01943ab4af9e11b8162452fa104dec4(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' messages, core_message ';
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
                
                $buffer .= ' messages, core_message ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function section2e9cc37de32b574e1a5e524b4716682a(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' nomessages, core_message ';
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
                
                $buffer .= ' nomessages, core_message ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    public function block0d825094e3f87721e5aeacfebed18011($context)
    {
        $indent = $buffer = '';
        $buffer .= $indent . 'view-overview-messages';
    
        return $buffer;
    }

    public function block2789032f6e1f39c33680b8f8aa5c4b63($context)
    {
        $indent = $buffer = '';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->sectionD01943ab4af9e11b8162452fa104dec4($context, $indent, $value);
    
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

    public function blockF1a783f39318b625163dd0aed0582dc3($context)
    {
        $indent = $buffer = '';
        $buffer .= $indent . '        <p class="text-muted mt-2">';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->section2e9cc37de32b574e1a5e524b4716682a($context, $indent, $value);
        $buffer .= '</p>
';
    
        return $buffer;
    }
}
