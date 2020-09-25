<?php

class __Mustache_41601de0f0600cc234d1be83ec61c93a extends Mustache_Template
{
    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $buffer = '';

        $buffer .= $indent . '<div id="recentlyaccessedcourses-view-';
        $value = $this->resolveValue($context->find('uniqid'), $context);
        $buffer .= call_user_func($this->mustache->getEscape(), $value);
        $buffer .= '"
';
        $buffer .= $indent . '     data-region="recentlyaccessedcourses-view"
';
        $buffer .= $indent . '     data-nocoursesimgurl="';
        $value = $this->resolveValue($context->find('nocoursesimgurl'), $context);
        $buffer .= call_user_func($this->mustache->getEscape(), $value);
        $buffer .= '">
';
        $buffer .= $indent . '    <div data-region="recentlyaccessedcourses-view-content">
';
        $buffer .= $indent . '        <div data-region="recentlyaccessedcourses-loading-placeholder">
';
        $buffer .= $indent . '            <div class="card-deck dashboard-card-deck one-row" style="height: 11.1rem">
';
        if ($partial = $this->mustache->loadPartial('block_recentlyaccessedcourses/placeholder-course')) {
            $buffer .= $partial->renderInternal($context, $indent . '                ');
        }
        if ($partial = $this->mustache->loadPartial('block_recentlyaccessedcourses/placeholder-course')) {
            $buffer .= $partial->renderInternal($context, $indent . '                ');
        }
        if ($partial = $this->mustache->loadPartial('block_recentlyaccessedcourses/placeholder-course')) {
            $buffer .= $partial->renderInternal($context, $indent . '                ');
        }
        if ($partial = $this->mustache->loadPartial('block_recentlyaccessedcourses/placeholder-course')) {
            $buffer .= $partial->renderInternal($context, $indent . '                ');
        }
        $buffer .= $indent . '            </div>
';
        $buffer .= $indent . '        </div>
';
        $buffer .= $indent . '    </div>
';
        $buffer .= $indent . '</div>';

        return $buffer;
    }
}
