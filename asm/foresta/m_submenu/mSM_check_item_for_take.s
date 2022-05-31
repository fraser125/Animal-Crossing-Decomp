lbl_803EFFDC:
/* 803EFFDC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803EFFE0  54 66 08 3C */	slwi r6, r3, 1
/* 803EFFE4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803EFFE8  38 60 00 00 */	li r3, 0
/* 803EFFEC  3C A5 00 02 */	addis r5, r5, 2
/* 803EFFF0  80 E5 61 3C */	lwz r7, 0x613c(r5)
/* 803EFFF4  7C A7 32 14 */	add r5, r7, r6
/* 803EFFF8  A0 A5 00 68 */	lhz r5, 0x68(r5)
/* 803EFFFC  28 05 00 00 */	cmplwi r5, 0
/* 803F0000  54 A8 C7 3E */	rlwinm r8, r5, 0x18, 0x1c, 0x1f
/* 803F0004  4D 82 00 20 */	beqlr 
/* 803F0008  80 07 00 88 */	lwz r0, 0x88(r7)
/* 803F000C  7C 00 34 30 */	srw r0, r0, r6
/* 803F0010  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 803F0014  4C 82 00 20 */	bnelr 
/* 803F0018  28 05 25 23 */	cmplwi r5, 0x2523
/* 803F001C  41 80 00 0C */	blt lbl_803F0028
/* 803F0020  28 05 25 2F */	cmplwi r5, 0x252f
/* 803F0024  4C 81 00 20 */	blelr 
lbl_803F0028:
/* 803F0028  28 05 25 30 */	cmplwi r5, 0x2530
/* 803F002C  4D 82 00 20 */	beqlr 
/* 803F0030  28 05 2D 28 */	cmplwi r5, 0x2d28
/* 803F0034  41 80 00 0C */	blt lbl_803F0040
/* 803F0038  28 05 2D 2C */	cmplwi r5, 0x2d2c
/* 803F003C  4C 81 00 20 */	blelr 
lbl_803F0040:
/* 803F0040  2C 04 00 00 */	cmpwi r4, 0
/* 803F0044  41 82 00 30 */	beq lbl_803F0074
/* 803F0048  54 A0 A7 3E */	rlwinm r0, r5, 0x14, 0x1c, 0x1f
/* 803F004C  2C 00 00 02 */	cmpwi r0, 2
/* 803F0050  4C 82 00 20 */	bnelr 
/* 803F0054  2C 08 00 03 */	cmpwi r8, 3
/* 803F0058  40 82 00 0C */	bne lbl_803F0064
/* 803F005C  2C 04 00 01 */	cmpwi r4, 1
/* 803F0060  41 82 00 14 */	beq lbl_803F0074
lbl_803F0064:
/* 803F0064  2C 08 00 0D */	cmpwi r8, 0xd
/* 803F0068  4C 82 00 20 */	bnelr 
/* 803F006C  2C 04 00 02 */	cmpwi r4, 2
/* 803F0070  4C 82 00 20 */	bnelr 
lbl_803F0074:
/* 803F0074  38 60 00 01 */	li r3, 1
/* 803F0078  4E 80 00 20 */	blr 
