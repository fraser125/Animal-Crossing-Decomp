lbl_8047D5E4:
/* 8047D5E4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8047D5E8  2C 00 03 84 */	cmpwi r0, 0x384
/* 8047D5EC  41 82 00 F4 */	beq lbl_8047D6E0
/* 8047D5F0  40 80 00 4C */	bge lbl_8047D63C
/* 8047D5F4  2C 00 03 7E */	cmpwi r0, 0x37e
/* 8047D5F8  41 82 00 98 */	beq lbl_8047D690
/* 8047D5FC  40 80 00 1C */	bge lbl_8047D618
/* 8047D600  2C 00 00 79 */	cmpwi r0, 0x79
/* 8047D604  41 82 00 CC */	beq lbl_8047D6D0
/* 8047D608  40 80 01 00 */	bge lbl_8047D708
/* 8047D60C  2C 00 00 55 */	cmpwi r0, 0x55
/* 8047D610  41 82 00 78 */	beq lbl_8047D688
/* 8047D614  48 00 00 F4 */	b lbl_8047D708
lbl_8047D618:
/* 8047D618  2C 00 03 81 */	cmpwi r0, 0x381
/* 8047D61C  41 82 00 94 */	beq lbl_8047D6B0
/* 8047D620  40 80 00 10 */	bge lbl_8047D630
/* 8047D624  2C 00 03 80 */	cmpwi r0, 0x380
/* 8047D628  40 80 00 78 */	bge lbl_8047D6A0
/* 8047D62C  48 00 00 6C */	b lbl_8047D698
lbl_8047D630:
/* 8047D630  2C 00 03 83 */	cmpwi r0, 0x383
/* 8047D634  40 80 00 A4 */	bge lbl_8047D6D8
/* 8047D638  48 00 00 80 */	b lbl_8047D6B8
lbl_8047D63C:
/* 8047D63C  2C 00 03 95 */	cmpwi r0, 0x395
/* 8047D640  41 82 00 88 */	beq lbl_8047D6C8
/* 8047D644  40 80 00 28 */	bge lbl_8047D66C
/* 8047D648  2C 00 03 8F */	cmpwi r0, 0x38f
/* 8047D64C  41 82 00 9C */	beq lbl_8047D6E8
/* 8047D650  40 80 00 10 */	bge lbl_8047D660
/* 8047D654  2C 00 03 86 */	cmpwi r0, 0x386
/* 8047D658  40 80 00 B0 */	bge lbl_8047D708
/* 8047D65C  48 00 00 4C */	b lbl_8047D6A8
lbl_8047D660:
/* 8047D660  2C 00 03 91 */	cmpwi r0, 0x391
/* 8047D664  40 80 00 A4 */	bge lbl_8047D708
/* 8047D668  48 00 00 88 */	b lbl_8047D6F0
lbl_8047D66C:
/* 8047D66C  2C 00 03 B4 */	cmpwi r0, 0x3b4
/* 8047D670  41 82 00 90 */	beq lbl_8047D700
/* 8047D674  40 80 00 94 */	bge lbl_8047D708
/* 8047D678  2C 00 03 97 */	cmpwi r0, 0x397
/* 8047D67C  41 82 00 7C */	beq lbl_8047D6F8
/* 8047D680  40 80 00 88 */	bge lbl_8047D708
/* 8047D684  48 00 00 3C */	b lbl_8047D6C0
lbl_8047D688:
/* 8047D688  38 60 00 01 */	li r3, 1
/* 8047D68C  4E 80 00 20 */	blr 
lbl_8047D690:
/* 8047D690  38 60 00 02 */	li r3, 2
/* 8047D694  4E 80 00 20 */	blr 
lbl_8047D698:
/* 8047D698  38 60 00 03 */	li r3, 3
/* 8047D69C  4E 80 00 20 */	blr 
lbl_8047D6A0:
/* 8047D6A0  38 60 00 04 */	li r3, 4
/* 8047D6A4  4E 80 00 20 */	blr 
lbl_8047D6A8:
/* 8047D6A8  38 60 00 05 */	li r3, 5
/* 8047D6AC  4E 80 00 20 */	blr 
lbl_8047D6B0:
/* 8047D6B0  38 60 00 06 */	li r3, 6
/* 8047D6B4  4E 80 00 20 */	blr 
lbl_8047D6B8:
/* 8047D6B8  38 60 00 07 */	li r3, 7
/* 8047D6BC  4E 80 00 20 */	blr 
lbl_8047D6C0:
/* 8047D6C0  38 60 00 08 */	li r3, 8
/* 8047D6C4  4E 80 00 20 */	blr 
lbl_8047D6C8:
/* 8047D6C8  38 60 00 09 */	li r3, 9
/* 8047D6CC  4E 80 00 20 */	blr 
lbl_8047D6D0:
/* 8047D6D0  38 60 00 0A */	li r3, 0xa
/* 8047D6D4  4E 80 00 20 */	blr 
lbl_8047D6D8:
/* 8047D6D8  38 60 00 0B */	li r3, 0xb
/* 8047D6DC  4E 80 00 20 */	blr 
lbl_8047D6E0:
/* 8047D6E0  38 60 00 0C */	li r3, 0xc
/* 8047D6E4  4E 80 00 20 */	blr 
lbl_8047D6E8:
/* 8047D6E8  38 60 00 0D */	li r3, 0xd
/* 8047D6EC  4E 80 00 20 */	blr 
lbl_8047D6F0:
/* 8047D6F0  38 60 00 0E */	li r3, 0xe
/* 8047D6F4  4E 80 00 20 */	blr 
lbl_8047D6F8:
/* 8047D6F8  38 60 00 0F */	li r3, 0xf
/* 8047D6FC  4E 80 00 20 */	blr 
lbl_8047D700:
/* 8047D700  38 60 00 10 */	li r3, 0x10
/* 8047D704  4E 80 00 20 */	blr 
lbl_8047D708:
/* 8047D708  38 60 00 01 */	li r3, 1
/* 8047D70C  4E 80 00 20 */	blr 
