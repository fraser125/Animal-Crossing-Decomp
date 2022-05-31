lbl_80379BE4:
/* 80379BE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80379BE8  7C 08 02 A6 */	mflr r0
/* 80379BEC  38 80 00 01 */	li r4, 1
/* 80379BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80379BF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80379BF8  7C 7F 1B 78 */	mr r31, r3
/* 80379BFC  38 60 00 40 */	li r3, 0x40
/* 80379C00  48 02 3F 01 */	bl mEv_check_status
/* 80379C04  2C 03 00 00 */	cmpwi r3, 0
/* 80379C08  41 82 00 3C */	beq lbl_80379C44
/* 80379C0C  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 80379C10  3C 80 03 3F */	lis r4, 0x033F /* 0x033F7DC0@ha */
/* 80379C14  3C A0 04 00 */	lis r5, 0x0400 /* 0x03FFFFFF@ha */
/* 80379C18  38 C5 FF FF */	addi r6, r5, 0xFFFF /* 0x03FFFFFF@l */
/* 80379C1C  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 80379C20  38 84 7D C0 */	addi r4, r4, 0x7DC0 /* 0x033F7DC0@l */
/* 80379C24  3C A0 00 42 */	lis r5, 0x42
/* 80379C28  4B FF EE 0D */	bl mBGMClock_range_time_check
/* 80379C2C  2C 03 00 00 */	cmpwi r3, 0
/* 80379C30  41 82 00 14 */	beq lbl_80379C44
/* 80379C34  80 1F 00 00 */	lwz r0, 0(r31)
/* 80379C38  60 00 00 01 */	ori r0, r0, 1
/* 80379C3C  90 1F 00 00 */	stw r0, 0(r31)
/* 80379C40  48 00 00 10 */	b lbl_80379C50
lbl_80379C44:
/* 80379C44  80 1F 00 00 */	lwz r0, 0(r31)
/* 80379C48  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80379C4C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80379C50:
/* 80379C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80379C54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80379C58  7C 08 03 A6 */	mtlr r0
/* 80379C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80379C60  4E 80 00 20 */	blr 
