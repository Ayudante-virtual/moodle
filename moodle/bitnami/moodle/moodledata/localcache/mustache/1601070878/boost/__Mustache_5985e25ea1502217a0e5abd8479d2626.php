<?php

class __Mustache_5985e25ea1502217a0e5abd8479d2626 extends Mustache_Template
{
    private $lambdaHelper;

    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $this->lambdaHelper = new Mustache_LambdaHelper($this->mustache, $context);
        $buffer = '';

        $buffer .= $indent . '<div data-region="view-selector" class="btn-group">
';
        $buffer .= $indent . '    <button type="button" class="btn btn-outline-secondary dropdown-toggle icon-no-margin" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
';
        $buffer .= $indent . '        ';
        // 'pix' section
        $value = $context->find('pix');
        $buffer .= $this->sectionC941581ed22833ebdc688d5da36a360a($context, $indent, $value);
        $buffer .= '
';
        $buffer .= $indent . '        <span class="sr-only">
';
        $buffer .= $indent . '            ';
        // 'sorttimelinecourses' section
        $value = $context->find('sorttimelinecourses');
        $buffer .= $this->sectionDaa777aefb163af2093031798a0b5f8b($context, $indent, $value);
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->section0fa205000ef28b6095fc51405a3bcb1e($context, $indent, $value);
        // 'sorttimelinecourses' section
        $value = $context->find('sorttimelinecourses');
        $buffer .= $this->sectionA27340841fcc8695eb6ca99931a7d7e0($context, $indent, $value);
        $buffer .= '
';
        $buffer .= $indent . '            ';
        // 'sorttimelinedates' section
        $value = $context->find('sorttimelinedates');
        $buffer .= $this->sectionDaa777aefb163af2093031798a0b5f8b($context, $indent, $value);
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->section0e371d172f96b805892a6421f8a90d73($context, $indent, $value);
        // 'sorttimelinedates' section
        $value = $context->find('sorttimelinedates');
        $buffer .= $this->sectionA27340841fcc8695eb6ca99931a7d7e0($context, $indent, $value);
        $buffer .= '
';
        $buffer .= $indent . '        </span>
';
        $buffer .= $indent . '    </button>
';
        $buffer .= $indent . '    <div role="menu" class="dropdown-menu dropdown-menu-right list-group hidden" data-show-active-item data-skip-active-class="true" >
';
        $buffer .= $indent . '        <a
';
        $buffer .= $indent . '            class="dropdown-item ';
        // 'sorttimelinedates' section
        $value = $context->find('sorttimelinedates');
        $buffer .= $this->section5749c750acb0d7477dd5257d00cc6d53($context, $indent, $value);
        $buffer .= '"
';
        $buffer .= $indent . '            href="#view_dates_';
        $value = $this->resolveValue($context->find('uniqid'), $context);
        $buffer .= call_user_func($this->mustache->getEscape(), $value);
        $buffer .= '"
';
        $buffer .= $indent . '            data-toggle="tab"
';
        $buffer .= $indent . '            data-filtername="sortbydates"
';
        $buffer .= $indent . '            aria-label="';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->sectionB059cbc52d578d75eb17a5d7ee98c57e($context, $indent, $value);
        $buffer .= '"
';
        $buffer .= $indent . '        >
';
        $buffer .= $indent . '            ';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->section0e371d172f96b805892a6421f8a90d73($context, $indent, $value);
        $buffer .= '
';
        $buffer .= $indent . '        </a>
';
        $buffer .= $indent . '        <a
';
        $buffer .= $indent . '            class="dropdown-item ';
        // 'sorttimelinecourses' section
        $value = $context->find('sorttimelinecourses');
        $buffer .= $this->section5749c750acb0d7477dd5257d00cc6d53($context, $indent, $value);
        $buffer .= '"
';
        $buffer .= $indent . '            href="#view_courses_';
        $value = $this->resolveValue($context->find('uniqid'), $context);
        $buffer .= call_user_func($this->mustache->getEscape(), $value);
        $buffer .= '"
';
        $buffer .= $indent . '            data-toggle="tab"
';
        $buffer .= $indent . '            data-filtername="sortbycourses"
';
        $buffer .= $indent . '            aria-label="';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->section03cebf862b1d4876fc56e14d75f8c3dc($context, $indent, $value);
        $buffer .= '"
';
        $buffer .= $indent . '        >
';
        $buffer .= $indent . '            ';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->sectionBfaaee379c81d3133b94a4d029246ae1($context, $indent, $value);
        $buffer .= '
';
        $buffer .= $indent . '        </a>
';
        $buffer .= $indent . '    </div>
';
        $buffer .= $indent . '</div>
';

        return $buffer;
    }

    private function sectionC941581ed22833ebdc688d5da36a360a(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' i/filter ';
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
                
                $buffer .= ' i/filter ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function sectionDaa777aefb163af2093031798a0b5f8b(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = '<span data-active-item-text>';
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
                
                $buffer .= '<span data-active-item-text>';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function section0fa205000ef28b6095fc51405a3bcb1e(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' ariaviewselector, block_timeline';
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
                
                $buffer .= ' ariaviewselector, block_timeline';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function sectionA27340841fcc8695eb6ca99931a7d7e0(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = '</span>';
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
                
                $buffer .= '</span>';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function section0e371d172f96b805892a6421f8a90d73(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' sortbydates, block_timeline ';
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
                
                $buffer .= ' sortbydates, block_timeline ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function section5749c750acb0d7477dd5257d00cc6d53(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = 'active';
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
                
                $buffer .= 'active';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function sectionB059cbc52d578d75eb17a5d7ee98c57e(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' ariaviewselectoroption, block_timeline, {{#str}} sortbydates, block_timeline {{/str}}';
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
                
                $buffer .= ' ariaviewselectoroption, block_timeline, ';
                // 'str' section
                $value = $context->find('str');
                $buffer .= $this->section0e371d172f96b805892a6421f8a90d73($context, $indent, $value);
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function sectionBfaaee379c81d3133b94a4d029246ae1(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' sortbycourses, block_timeline ';
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
                
                $buffer .= ' sortbycourses, block_timeline ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function section03cebf862b1d4876fc56e14d75f8c3dc(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' ariaviewselectoroption, block_timeline, {{#str}} sortbycourses, block_timeline {{/str}}';
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
                
                $buffer .= ' ariaviewselectoroption, block_timeline, ';
                // 'str' section
                $value = $context->find('str');
                $buffer .= $this->sectionBfaaee379c81d3133b94a4d029246ae1($context, $indent, $value);
                $context->pop();
            }
        }
    
        return $buffer;
    }

}
