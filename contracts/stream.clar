;; error codes
(define-constant ERR_UNAUTHORIZED (err u0))
(define-constant ERR_INVALID_SIGNATURE  (err u1))
(define-constant ERR_STREAM_STILL_ACTIVE (err u2))
(define-constant ERR_INVALID_STREAM_ID (err u3))

;; data vars
(define-data-var latest-stream-id uint u0)

;; stream mappping
(define-map streams
    uint ;; stream-id
    { 
        sender: principal,
        receipent: principal,
        balance: uint,
        withdrawn-balance: uint,
        payment-per-block: uint,
        timeframe: (tuple (start-block uint) (stop-block uint))
    }
)