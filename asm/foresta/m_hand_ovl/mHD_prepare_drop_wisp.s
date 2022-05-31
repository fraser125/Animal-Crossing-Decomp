lbl_805DDD34:
/* 805DDD34  A0 C3 02 34 */	lhz r6, 0x234(r3)
/* 805DDD38  80 03 03 60 */	lwz r0, 0x360(r3)
/* 805DDD3C  28 06 2D 28 */	cmplwi r6, 0x2d28
/* 805DDD40  4D 80 00 20 */	bltlr 
/* 805DDD44  28 06 2D 2C */	cmplwi r6, 0x2d2c
/* 805DDD48  4D 81 00 20 */	bgtlr 
/* 805DDD4C  A0 E4 00 00 */	lhz r7, 0(r4)
/* 805DDD50  28 07 2D 28 */	cmplwi r7, 0x2d28
/* 805DDD54  4D 80 00 20 */	bltlr 
/* 805DDD58  28 07 2D 2C */	cmplwi r7, 0x2d2c
/* 805DDD5C  4D 81 00 20 */	bgtlr 
/* 805DDD60  28 00 00 00 */	cmplwi r0, 0
/* 805DDD64  4C 82 00 20 */	bnelr 
/* 805DDD68  4C 82 00 20 */	bnelr 
/* 805DDD6C  28 06 2D 28 */	cmplwi r6, 0x2d28
/* 805DDD70  38 00 00 00 */	li r0, 0
/* 805DDD74  41 80 00 10 */	blt lbl_805DDD84
/* 805DDD78  28 06 2D 2C */	cmplwi r6, 0x2d2c
/* 805DDD7C  41 81 00 08 */	bgt lbl_805DDD84
/* 805DDD80  38 00 00 01 */	li r0, 1
lbl_805DDD84:
/* 805DDD84  20 00 00 00 */	subfic r0, r0, 0
/* 805DDD88  28 07 2D 28 */	cmplwi r7, 0x2d28
/* 805DDD8C  7C 80 01 10 */	subfe r4, r0, r0
/* 805DDD90  38 06 D2 D9 */	addi r0, r6, -11559
/* 805DDD94  7C 06 20 38 */	and r6, r0, r4
/* 805DDD98  38 00 00 00 */	li r0, 0
/* 805DDD9C  41 80 00 10 */	blt lbl_805DDDAC
/* 805DDDA0  28 07 2D 2C */	cmplwi r7, 0x2d2c
/* 805DDDA4  41 81 00 08 */	bgt lbl_805DDDAC
/* 805DDDA8  38 00 00 01 */	li r0, 1
lbl_805DDDAC:
/* 805DDDAC  20 00 00 00 */	subfic r0, r0, 0
/* 805DDDB0  2C 06 00 05 */	cmpwi r6, 5
/* 805DDDB4  7C 80 01 10 */	subfe r4, r0, r0
/* 805DDDB8  38 07 D2 D9 */	addi r0, r7, -11559
/* 805DDDBC  7C 00 20 38 */	and r0, r0, r4
/* 805DDDC0  4D 82 00 20 */	beqlr 
/* 805DDDC4  2C 00 00 05 */	cmpwi r0, 5
/* 805DDDC8  4D 82 00 20 */	beqlr 
/* 805DDDCC  7C C6 02 14 */	add r6, r6, r0
/* 805DDDD0  34 E6 FF FB */	addic. r7, r6, -5
/* 805DDDD4  40 81 00 30 */	ble lbl_805DDE04
/* 805DDDD8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805DDDDC  38 E7 2D 27 */	addi r7, r7, 0x2d27
/* 805DDDE0  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 805DDDE4  38 00 2D 2C */	li r0, 0x2d2c
/* 805DDDE8  54 A4 08 3C */	slwi r4, r5, 1
/* 805DDDEC  3C A6 00 02 */	addis r5, r6, 2
/* 805DDDF0  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 805DDDF4  7C 85 22 14 */	add r4, r5, r4
/* 805DDDF8  B0 E4 00 68 */	sth r7, 0x68(r4)
/* 805DDDFC  B0 03 02 34 */	sth r0, 0x234(r3)
/* 805DDE00  4E 80 00 20 */	blr 
lbl_805DDE04:
/* 805DDE04  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805DDE08  38 06 2D 27 */	addi r0, r6, 0x2d27
/* 805DDE0C  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 805DDE10  54 A4 08 3C */	slwi r4, r5, 1
/* 805DDE14  3C A6 00 02 */	addis r5, r6, 2
/* 805DDE18  38 C0 00 00 */	li r6, 0
/* 805DDE1C  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 805DDE20  7C 85 22 14 */	add r4, r5, r4
/* 805DDE24  B0 C4 00 68 */	sth r6, 0x68(r4)
/* 805DDE28  B0 03 02 34 */	sth r0, 0x234(r3)
/* 805DDE2C  4E 80 00 20 */	blr 
