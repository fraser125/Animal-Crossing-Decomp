lbl_804BF018:
/* 804BF018  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 804BF01C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804BF020  41 82 00 2C */	beq lbl_804BF04C
/* 804BF024  2C 00 00 04 */	cmpwi r0, 4
/* 804BF028  40 80 00 24 */	bge lbl_804BF04C
/* 804BF02C  2C 00 00 00 */	cmpwi r0, 0
/* 804BF030  40 82 00 14 */	bne lbl_804BF044
/* 804BF034  40 82 00 18 */	bne lbl_804BF04C
/* 804BF038  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 804BF03C  2C 00 00 09 */	cmpwi r0, 9
/* 804BF040  41 82 00 0C */	beq lbl_804BF04C
lbl_804BF044:
/* 804BF044  38 60 00 01 */	li r3, 1
/* 804BF048  4E 80 00 20 */	blr 
lbl_804BF04C:
/* 804BF04C  38 60 00 00 */	li r3, 0
/* 804BF050  4E 80 00 20 */	blr 
