<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Fortify\TwoFactorAuthenticatable;
use Laravel\Jetstream\HasProfilePhoto;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens;
    use HasFactory;
    use HasProfilePhoto;
    use Notifiable;
    use TwoFactorAuthenticatable;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'type',
        'name',
        'username',
        'password',
        'login_type',
        'api_token',
        'profile_pic',
        'iqama_no' ,
        'passport_no',
        'mobile_no', 
        'reported_by',
        'reported_date',
        'district',
        'state',
        'embassy_noc_or_author_status',
        'embassy_noc_or_author_ref',
        'sponsor_or_employer_name',
        'sponsor_or_employer_contactno',
        'contact_in_india', 
        'case_attended_by',
        'religion', 
        'attorney_name',
        'iqama_no_or_national_id',
        'mobile_no2',
        'bur_or_disp_status', 
        'burial_or_dispatch_date',
        'maqbara_or_dispatched',
        'case_type',
        'value_of_the_case',
        'income',
        'expenses',
        'type_of_disease',
        'hospital',
        'file',
        'blood_type',
        'required_quantity',
        'name_of_owner',
        'blood_owner',
        'blood_bank',
        'date_donation',
        'contact_no',
        'required_date',
        'status',
        'remarks'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
        'two_factor_recovery_codes',
        'two_factor_secret',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array
     */
    protected $appends = [
        'profile_photo_url',
    ];
    
    public function station()
    {
        return $this->belongsTo(Station::class, 'stations');
    }
}
