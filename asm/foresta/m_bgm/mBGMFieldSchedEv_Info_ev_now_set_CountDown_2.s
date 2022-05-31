lbl_80379AE4:
/* 80379AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80379AE8  7C 08 02 A6 */	mflr r0
/* 80379AEC  38 80 00 01 */	li r4, 1
/* 80379AF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80379AF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80379AF8  7C 7F 1B 78 */	mr r31, r3
/* 80379AFC  38 60 00 40 */	li r3, 0x40
/* 80379B00  48 02 40 01 */	bl mEv_check_status
/* 80379B04  2C 03 00 00 */	cmpwi r3, 0
/* 80379B08  41 82 00 3C */	beq lbl_80379B44
/* 80379B0C  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 80379B10  3C A0 03 3F */	lis r5, 0x033F /* 0x033F7780@ha */
/* 80379B14  3C C0 04 00 */	lis r6, 0x0400 /* 0x03FFFFFF@ha */
/* 80379B18  38 85 77 80 */	addi r4, r5, 0x7780 /* 0x033F7780@l */
/* 80379B1C  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 80379B20  38 A5 7C 80 */	addi r5, r5, 0x7c80
/* 80379B24  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x03FFFFFF@l */
/* 80379B28  4B FF EF 0D */	bl mBGMClock_range_time_check
/* 80379B2C  2C 03 00 00 */	cmpwi r3, 0
/* 80379B30  41 82 00 14 */	beq lbl_80379B44
/* 80379B34  80 1F 00 00 */	lwz r0, 0(r31)
/* 80379B38  60 00 00 01 */	ori r0, r0, 1
/* 80379B3C  90 1F 00 00 */	stw r0, 0(r31)
/* 80379B40  48 00 00 10 */	b lbl_80379B50
lbl_80379B44:
/* 80379B44  80 1F 00 00 */	lwz r0, 0(r31)
/* 80379B48  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80379B4C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80379B50:
/* 80379B50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80379B54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80379B58  7C 08 03 A6 */	mtlr r0
/* 80379B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80379B60  4E 80 00 20 */	blr 
