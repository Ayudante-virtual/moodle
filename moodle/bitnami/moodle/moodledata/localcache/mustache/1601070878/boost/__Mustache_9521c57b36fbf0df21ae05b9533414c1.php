<?php

class __Mustache_9521c57b36fbf0df21ae05b9533414c1 extends Mustache_Template
{
    private $lambdaHelper;

    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $this->lambdaHelper = new Mustache_LambdaHelper($this->mustache, $context);
        $buffer = '';

        $buffer .= $indent . '
';
        $buffer .= $indent . '<div class="p-3 bg-white" data-region="confirm-dialogue" role="alert">
';
        $buffer .= $indent . '    <h3 class="h6 hidden" data-region="dialogue-header"></h3>
';
        $buffer .= $indent . '    <p class="text-muted" data-region="dialogue-text"></p>
';
        $buffer .= $indent . '    <button type="button" class="btn btn-primary btn-block hidden" data-action="confirm-block">
';
        $buffer .= $indent . '        <span data-region="dialogue-button-text">';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->section541b0f9a7c23d4f33056703ed13838ab($context, $indent, $value);
        $buffer .= '</span>
';
        $buffer .= $indent . '        <span class="hidden" data-region="loading-icon-container">';
        if ($partial = $this->mustache->loadPartial('core/loading')) {
            $buffer .= $partial->renderInternal($context);
        }
        $buffer .= '</span>
';
        $buffer .= $indent . '    </button>
';
        $buffer .= $indent . '    <button type="button" class="btn btn-primary btn-block hidden" data-action="confirm-unblock">
';
        $buffer .= $indent . '        <span data-region="dialogue-button-text">';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->sectionC2c44e243ed5eeb2c5c46c89b9477060($context, $indent, $value);
        $buffer .= '</span>
';
        $buffer .= $indent . '        <span class="hidden" data-region="loading-icon-container">';
        if ($partial = $this->mustache->loadPartial('core/loading')) {
            $buffer .= $partial->renderInternal($context);
        }
        $buffer .= '</span>
';
        $buffer .= $indent . '    </button>
';
        $buffer .= $indent . '    <button type="button" class="btn btn-primary btn-block hidden" data-action="confirm-remove-contact">
';
        $buffer .= $indent . '        <span data-region="dialogue-button-text">';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->sectionC779c6b55d0281a06dd60124aa99305e($context, $indent, $value);
        $buffer .= '</span>
';
        $buffer .= $indent . '        <span class="hidden" data-region="loading-icon-container">';
        if ($partial = $this->mustache->loadPartial('core/loading')) {
            $buffer .= $partial->renderInternal($context);
        }
        $buffer .= '</span>
';
        $buffer .= $indent . '    </button>
';
        $buffer .= $indent . '    <button type="button" class="btn btn-primary btn-block hidden" data-action="confirm-add-contact">
';
        $buffer .= $indent . '        <span data-region="dialogue-button-text">';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->sectionCd5e70efb5f7158c4c3649c597dd32f7($context, $indent, $value);
        $buffer .= '</span>
';
        $buffer .= $indent . '        <span class="hidden" data-region="loading-icon-container">';
        if ($partial = $this->mustache->loadPartial('core/loading')) {
            $buffer .= $partial->renderInternal($context);
        }
        $buffer .= '</span>
';
        $buffer .= $indent . '    </button>
';
        $buffer .= $indent . '    <button type="button" class="btn btn-primary btn-block hidden" data-action="confirm-delete-selected-messages">
';
        $buffer .= $indent . '        <span data-region="dialogue-button-text">';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->section64172922a3e0de72f74333365d6d5705($context, $indent, $value);
        $buffer .= '</span>
';
        $buffer .= $indent . '        <span class="hidden" data-region="loading-icon-container">';
        if ($partial = $this->mustache->loadPartial('core/loading')) {
            $buffer .= $partial->renderInternal($context);
        }
        $buffer .= '</span>
';
        $buffer .= $indent . '    </button>
';
        $buffer .= $indent . '    <button type="button" class="btn btn-primary btn-block hidden" data-action="confirm-delete-conversation">
';
        $buffer .= $indent . '        <span data-region="dialogue-button-text">';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->section64172922a3e0de72f74333365d6d5705($context, $indent, $value);
        $buffer .= '</span>
';
        $buffer .= $indent . '        <span class="hidden" data-region="loading-icon-container">';
        if ($partial = $this->mustache->loadPartial('core/loading')) {
            $buffer .= $partial->renderInternal($context);
        }
        $buffer .= '</span>
';
        $buffer .= $indent . '    </button>
';
        $buffer .= $indent . '    <button type="button" class="btn btn-primary btn-block hidden" data-action="request-add-contact">
';
        $buffer .= $indent . '        <span data-region="dialogue-button-text">';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->sectionDa90d06ab5e06fe3de5fcf18510c4f78($context, $indent, $value);
        $buffer .= '</span>
';
        $buffer .= $indent . '        <span class="hidden" data-region="loading-icon-container">';
        if ($partial = $this->mustache->loadPartial('core/loading')) {
            $buffer .= $partial->renderInternal($context);
        }
        $buffer .= '</span>
';
        $buffer .= $indent . '    </button>
';
        $buffer .= $indent . '    <button type="button" class="btn btn-primary btn-block hidden" data-action="accept-contact-request">
';
        $buffer .= $indent . '        <span data-region="dialogue-button-text">';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->sectionD5f5e12e598a920f8695b36c578f5c1d($context, $indent, $value);
        $buffer .= '</span>
';
        $buffer .= $indent . '        <span class="hidden" data-region="loading-icon-container">';
        if ($partial = $this->mustache->loadPartial('core/loading')) {
            $buffer .= $partial->renderInternal($context);
        }
        $buffer .= '</span>
';
        $buffer .= $indent . '    </button>
';
        $buffer .= $indent . '    <button type="button" class="btn btn-secondary btn-block hidden" data-action="decline-contact-request">
';
        $buffer .= $indent . '        <span data-region="dialogue-button-text">';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->sectionD15554e5b30b5c80cbd56458fc4b23b7($context, $indent, $value);
        $buffer .= '</span>
';
        $buffer .= $indent . '        <span class="hidden" data-region="loading-icon-container">';
        if ($partial = $this->mustache->loadPartial('core/loading')) {
            $buffer .= $partial->renderInternal($context);
        }
        $buffer .= '</span>
';
        $buffer .= $indent . '    </button>
';
        $buffer .= $indent . '    <button type="button" class="btn btn-secondary btn-block" data-action="cancel-confirm">';
        // 'str' section
        $value = $context->find('str');
        $buffer .= $this->section8eb62c59a228ba3caf1c4f365ea4c088($context, $indent, $value);
        $buffer .= '</button>
';
        $buffer .= $indent . '</div>
';

        return $buffer;
    }

    private function section541b0f9a7c23d4f33056703ed13838ab(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' block, core ';
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
                
                $buffer .= ' block, core ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function sectionC2c44e243ed5eeb2c5c46c89b9477060(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' unblock, core_message ';
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
                
                $buffer .= ' unblock, core_message ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function sectionC779c6b55d0281a06dd60124aa99305e(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' remove, core ';
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
                
                $buffer .= ' remove, core ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function sectionCd5e70efb5f7158c4c3649c597dd32f7(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' add, core ';
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
                
                $buffer .= ' add, core ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function section64172922a3e0de72f74333365d6d5705(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' delete, core ';
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
                
                $buffer .= ' delete, core ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function sectionDa90d06ab5e06fe3de5fcf18510c4f78(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' sendcontactrequest, core_message ';
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
                
                $buffer .= ' sendcontactrequest, core_message ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function sectionD5f5e12e598a920f8695b36c578f5c1d(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' acceptandaddcontact, core_message ';
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
                
                $buffer .= ' acceptandaddcontact, core_message ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function sectionD15554e5b30b5c80cbd56458fc4b23b7(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' decline, core_message ';
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
                
                $buffer .= ' decline, core_message ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function section8eb62c59a228ba3caf1c4f365ea4c088(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' cancel, core ';
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
                
                $buffer .= ' cancel, core ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

}
