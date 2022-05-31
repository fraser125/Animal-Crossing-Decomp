lbl_80379B64:
/* 80379B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80379B68  7C 08 02 A6 */	mflr r0
/* 80379B6C  38 80 00 01 */	li r4, 1
/* 80379B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80379B74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80379B78  7C 7F 1B 78 */	mr r31, r3
/* 80379B7C  38 60 00 40 */	li r3, 0x40
/* 80379B80  48 02 3F 81 */	bl mEv_check_status
/* 80379B84  2C 03 00 00 */	cmpwi r3, 0
/* 80379B88  41 82 00 3C */	beq lbl_80379BC4
/* 80379B8C  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 80379B90  3C A0 03 3F */	lis r5, 0x033F /* 0x033F7C80@ha */
/* 80379B94  3C C0 04 00 */	lis r6, 0x0400 /* 0x03FFFFFF@ha */
/* 80379B98  38 85 7C 80 */	addi r4, r5, 0x7C80 /* 0x033F7C80@l */
/* 80379B9C  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 80379BA0  38 A5 7D C0 */	addi r5, r5, 0x7dc0
/* 80379BA4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x03FFFFFF@l */
/* 80379BA8  4B FF EE 8D */	bl mBGMClock_range_time_check
/* 80379BAC  2C 03 00 00 */	cmpwi r3, 0
/* 80379BB0  41 82 00 14 */	beq lbl_80379BC4
/* 80379BB4  80 1F 00 00 */	lwz r0, 0(r31)
/* 80379BB8  60 00 00 01 */	ori r0, r0, 1
/* 80379BBC  90 1F 00 00 */	stw r0, 0(r31)
/* 80379BC0  48 00 00 10 */	b lbl_80379BD0
lbl_80379BC4:
/* 80379BC4  80 1F 00 00 */	lwz r0, 0(r31)
/* 80379BC8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80379BCC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80379BD0:
/* 80379BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80379BD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80379BD8  7C 08 03 A6 */	mtlr r0
/* 80379BDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80379BE0  4E 80 00 20 */	blr 
