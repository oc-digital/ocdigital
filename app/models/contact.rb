class Contact < ActiveRecord::Base

  SUBJECT_OPTIONS = {
    'Code Review' => 'code review',
    'Consulting' => 'consulting',
    'Deployment' => 'deployment',
    'Design' => 'design',
    'Development' => 'development',
    'General Questions / Comments' => 'general inquiry',
    'Mobile' => 'mobile',
    'Strategy' => 'strategy',
    'UI Review' => 'ui review'
  }

  MARKETING_SOURCES = {
    'Something to do with search engines' => 'search',
    'Blog post' => 'blog post',
    'Someone said you are awesome' => 'referral'
  }

  validates_presence_of :email, :message, :name, :subject
  validates_inclusion_of :subject, in: SUBJECT_OPTIONS.values,
                          message: "The subject is not valid.",
                          if: "subject.present?"
  validates_inclusion_of :marketing_src, in: MARKETING_SOURCES.values,
                          message: "The marketing source is not valid.",
                          if: "marketing_src.present?"

end
