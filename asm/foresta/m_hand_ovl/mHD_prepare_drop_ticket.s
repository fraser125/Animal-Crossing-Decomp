lbl_805DDC30:
/* 805DDC30  A0 E3 02 34 */	lhz r7, 0x234(r3)
/* 805DDC34  80 C3 03 60 */	lwz r6, 0x360(r3)
/* 805DDC38  54 E0 A7 3E */	rlwinm r0, r7, 0x14, 0x1c, 0x1f
/* 805DDC3C  2C 00 00 02 */	cmpwi r0, 2
/* 805DDC40  4C 82 00 20 */	bnelr 
/* 805DDC44  A1 04 00 00 */	lhz r8, 0(r4)
/* 805DDC48  55 00 A7 3E */	rlwinm r0, r8, 0x14, 0x1c, 0x1f
/* 805DDC4C  2C 00 00 02 */	cmpwi r0, 2
/* 805DDC50  4C 82 00 20 */	bnelr 
/* 805DDC54  54 E0 C7 3E */	rlwinm r0, r7, 0x18, 0x1c, 0x1f
/* 805DDC58  2C 00 00 0C */	cmpwi r0, 0xc
/* 805DDC5C  4C 82 00 20 */	bnelr 
/* 805DDC60  55 00 C7 3E */	rlwinm r0, r8, 0x18, 0x1c, 0x1f
/* 805DDC64  2C 00 00 0C */	cmpwi r0, 0xc
/* 805DDC68  4C 82 00 20 */	bnelr 
/* 805DDC6C  28 06 00 00 */	cmplwi r6, 0
/* 805DDC70  4C 82 00 20 */	bnelr 
/* 805DDC74  4C 82 00 20 */	bnelr 
/* 805DDC78  54 E6 EF 3E */	rlwinm r6, r7, 0x1d, 0x1c, 0x1f
/* 805DDC7C  55 04 EF 3E */	rlwinm r4, r8, 0x1d, 0x1c, 0x1f
/* 805DDC80  39 26 00 01 */	addi r9, r6, 1
/* 805DDC84  38 04 00 01 */	addi r0, r4, 1
/* 805DDC88  7C 09 00 00 */	cmpw r9, r0
/* 805DDC8C  4C 82 00 20 */	bnelr 
/* 805DDC90  54 E6 07 7E */	clrlwi r6, r7, 0x1d
/* 805DDC94  55 04 07 7E */	clrlwi r4, r8, 0x1d
/* 805DDC98  38 06 00 01 */	addi r0, r6, 1
/* 805DDC9C  2C 00 00 05 */	cmpwi r0, 5
/* 805DDCA0  38 84 00 01 */	addi r4, r4, 1
/* 805DDCA4  4D 82 00 20 */	beqlr 
/* 805DDCA8  2C 04 00 05 */	cmpwi r4, 5
/* 805DDCAC  4D 82 00 20 */	beqlr 
/* 805DDCB0  7D 00 22 14 */	add r8, r0, r4
/* 805DDCB4  34 C8 FF FB */	addic. r6, r8, -5
/* 805DDCB8  40 81 00 40 */	ble lbl_805DDCF8
/* 805DDCBC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805DDCC0  38 09 FF FF */	addi r0, r9, -1
/* 805DDCC4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805DDCC8  38 E6 FF FF */	addi r7, r6, -1
/* 805DDCCC  3C 84 00 02 */	addis r4, r4, 2
/* 805DDCD0  54 00 18 38 */	slwi r0, r0, 3
/* 805DDCD4  80 C4 61 3C */	lwz r6, 0x613c(r4)
/* 805DDCD8  60 08 2C 00 */	ori r8, r0, 0x2c00
/* 805DDCDC  54 A4 08 3C */	slwi r4, r5, 1
/* 805DDCE0  60 00 2C 04 */	ori r0, r0, 0x2c04
/* 805DDCE4  7D 05 3B 78 */	or r5, r8, r7
/* 805DDCE8  7C 86 22 14 */	add r4, r6, r4
/* 805DDCEC  B0 A4 00 68 */	sth r5, 0x68(r4)
/* 805DDCF0  B0 03 02 34 */	sth r0, 0x234(r3)
/* 805DDCF4  4E 80 00 20 */	blr 
lbl_805DDCF8:
/* 805DDCF8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805DDCFC  38 09 FF FF */	addi r0, r9, -1
/* 805DDD00  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805DDD04  54 A5 08 3C */	slwi r5, r5, 1
/* 805DDD08  3C 84 00 02 */	addis r4, r4, 2
/* 805DDD0C  54 00 18 38 */	slwi r0, r0, 3
/* 805DDD10  80 C4 61 3C */	lwz r6, 0x613c(r4)
/* 805DDD14  60 04 2C 00 */	ori r4, r0, 0x2c00
/* 805DDD18  38 08 FF FF */	addi r0, r8, -1
/* 805DDD1C  38 E0 00 00 */	li r7, 0
/* 805DDD20  7C A6 2A 14 */	add r5, r6, r5
/* 805DDD24  B0 E5 00 68 */	sth r7, 0x68(r5)
/* 805DDD28  7C 80 03 78 */	or r0, r4, r0
/* 805DDD2C  B0 03 02 34 */	sth r0, 0x234(r3)
/* 805DDD30  4E 80 00 20 */	blr 
