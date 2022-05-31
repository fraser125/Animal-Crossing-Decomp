lbl_803A9F48:
/* 803A9F48  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 803A9F4C  38 A0 00 00 */	li r5, 0
/* 803A9F50  40 82 00 0C */	bne lbl_803A9F5C
/* 803A9F54  38 A0 00 01 */	li r5, 1
/* 803A9F58  48 00 00 C4 */	b lbl_803AA01C
lbl_803A9F5C:
/* 803A9F5C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803A9F60  2C 00 00 05 */	cmpwi r0, 5
/* 803A9F64  40 80 00 14 */	bge lbl_803A9F78
/* 803A9F68  2C 00 00 00 */	cmpwi r0, 0
/* 803A9F6C  41 82 00 18 */	beq lbl_803A9F84
/* 803A9F70  40 80 00 A8 */	bge lbl_803AA018
/* 803A9F74  48 00 00 A8 */	b lbl_803AA01C
lbl_803A9F78:
/* 803A9F78  2C 00 00 08 */	cmpwi r0, 8
/* 803A9F7C  41 82 00 9C */	beq lbl_803AA018
/* 803A9F80  48 00 00 9C */	b lbl_803AA01C
lbl_803A9F84:
/* 803A9F84  28 04 08 00 */	cmplwi r4, 0x800
/* 803A9F88  41 82 00 88 */	beq lbl_803AA010
/* 803A9F8C  28 04 08 05 */	cmplwi r4, 0x805
/* 803A9F90  41 82 00 80 */	beq lbl_803AA010
/* 803A9F94  28 04 08 0D */	cmplwi r4, 0x80d
/* 803A9F98  41 82 00 78 */	beq lbl_803AA010
/* 803A9F9C  28 04 08 15 */	cmplwi r4, 0x815
/* 803A9FA0  41 82 00 70 */	beq lbl_803AA010
/* 803A9FA4  28 04 08 1D */	cmplwi r4, 0x81d
/* 803A9FA8  41 82 00 68 */	beq lbl_803AA010
/* 803A9FAC  28 04 08 25 */	cmplwi r4, 0x825
/* 803A9FB0  41 82 00 60 */	beq lbl_803AA010
/* 803A9FB4  28 04 08 2D */	cmplwi r4, 0x82d
/* 803A9FB8  41 82 00 58 */	beq lbl_803AA010
/* 803A9FBC  28 04 08 32 */	cmplwi r4, 0x832
/* 803A9FC0  41 82 00 50 */	beq lbl_803AA010
/* 803A9FC4  28 04 08 37 */	cmplwi r4, 0x837
/* 803A9FC8  41 82 00 48 */	beq lbl_803AA010
/* 803A9FCC  28 04 08 4F */	cmplwi r4, 0x84f
/* 803A9FD0  41 82 00 40 */	beq lbl_803AA010
/* 803A9FD4  28 04 08 54 */	cmplwi r4, 0x854
/* 803A9FD8  41 82 00 38 */	beq lbl_803AA010
/* 803A9FDC  28 04 08 5D */	cmplwi r4, 0x85d
/* 803A9FE0  41 82 00 30 */	beq lbl_803AA010
/* 803A9FE4  28 04 08 63 */	cmplwi r4, 0x863
/* 803A9FE8  41 82 00 28 */	beq lbl_803AA010
/* 803A9FEC  28 04 08 3C */	cmplwi r4, 0x83c
/* 803A9FF0  41 80 00 0C */	blt lbl_803A9FFC
/* 803A9FF4  28 04 08 4D */	cmplwi r4, 0x84d
/* 803A9FF8  40 81 00 18 */	ble lbl_803AA010
lbl_803A9FFC:
/* 803A9FFC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803AA000  28 00 00 08 */	cmplwi r0, 8
/* 803AA004  41 80 00 18 */	blt lbl_803AA01C
/* 803AA008  28 00 00 0A */	cmplwi r0, 0xa
/* 803AA00C  41 81 00 10 */	bgt lbl_803AA01C
lbl_803AA010:
/* 803AA010  38 A0 00 01 */	li r5, 1
/* 803AA014  48 00 00 08 */	b lbl_803AA01C
lbl_803AA018:
/* 803AA018  38 A0 00 01 */	li r5, 1
lbl_803AA01C:
/* 803AA01C  7C A3 2B 78 */	mr r3, r5
/* 803AA020  4E 80 00 20 */	blr 
