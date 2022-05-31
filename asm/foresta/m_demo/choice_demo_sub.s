lbl_80399B90:
/* 80399B90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80399B94  7C 08 02 A6 */	mflr r0
/* 80399B98  90 01 00 34 */	stw r0, 0x34(r1)
/* 80399B9C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80399BA0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80399BA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80399BA8  4B D0 13 21 */	bl func_8009AEC8
/* 80399BAC  3C 80 80 64 */	lis r4, lit_878@ha /* 0x80641CDC@ha */
/* 80399BB0  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399BB4  C3 E4 1C DC */	lfs f31, lit_878@l(r4)  /* 0x80641CDC@l */
/* 80399BB8  3B E0 FF FF */	li r31, -1
/* 80399BBC  83 A3 1C BC */	lwz r29, data_80641CBC@l(r3)  /* 0x80641CBC@l */
/* 80399BC0  3B 80 00 00 */	li r28, 0
/* 80399BC4  3B C0 00 00 */	li r30, 0
/* 80399BC8  48 00 00 D8 */	b lbl_80399CA0
lbl_80399BCC:
/* 80399BCC  3B 7E 00 F0 */	addi r27, r30, 0xf0
/* 80399BD0  7F 7D DA 14 */	add r27, r29, r27
/* 80399BD4  83 5B 00 04 */	lwz r26, 4(r27)
/* 80399BD8  48 00 12 E1 */	bl mEv_CheckTitleDemo
/* 80399BDC  2C 03 00 00 */	cmpwi r3, 0
/* 80399BE0  41 82 00 38 */	beq lbl_80399C18
/* 80399BE4  2C 1A 00 01 */	cmpwi r26, 1
/* 80399BE8  41 82 00 30 */	beq lbl_80399C18
/* 80399BEC  48 00 12 CD */	bl mEv_CheckTitleDemo
/* 80399BF0  2C 03 FF F7 */	cmpwi r3, -9
/* 80399BF4  40 82 00 A4 */	bne lbl_80399C98
/* 80399BF8  2C 1A 00 08 */	cmpwi r26, 8
/* 80399BFC  40 82 00 9C */	bne lbl_80399C98
/* 80399C00  80 7B 00 00 */	lwz r3, 0(r27)
/* 80399C04  28 03 00 00 */	cmplwi r3, 0
/* 80399C08  41 82 00 90 */	beq lbl_80399C98
/* 80399C0C  A8 03 00 00 */	lha r0, 0(r3)
/* 80399C10  2C 00 00 99 */	cmpwi r0, 0x99
/* 80399C14  40 82 00 84 */	bne lbl_80399C98
lbl_80399C18:
/* 80399C18  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399C1C  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80399C20  80 63 00 00 */	lwz r3, 0(r3)
/* 80399C24  80 03 03 2C */	lwz r0, 0x32c(r3)
/* 80399C28  2C 00 00 00 */	cmpwi r0, 0
/* 80399C2C  40 82 00 10 */	bne lbl_80399C3C
/* 80399C30  80 03 02 F4 */	lwz r0, 0x2f4(r3)
/* 80399C34  7C 1A 00 00 */	cmpw r26, r0
/* 80399C38  41 80 00 60 */	blt lbl_80399C98
lbl_80399C3C:
/* 80399C3C  3C 60 80 64 */	lis r3, check_func@ha /* 0x80641D04@ha */
/* 80399C40  57 40 10 3A */	slwi r0, r26, 2
/* 80399C44  38 63 1D 04 */	addi r3, r3, check_func@l /* 0x80641D04@l */
/* 80399C48  7D 83 00 2E */	lwzx r12, r3, r0
/* 80399C4C  7D 89 03 A6 */	mtctr r12
/* 80399C50  4E 80 04 21 */	bctrl 
/* 80399C54  2C 03 00 00 */	cmpwi r3, 0
/* 80399C58  41 82 00 40 */	beq lbl_80399C98
/* 80399C5C  2C 1A 00 07 */	cmpwi r26, 7
/* 80399C60  40 82 00 30 */	bne lbl_80399C90
/* 80399C64  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80399C68  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 80399C6C  4B FF C2 A5 */	bl chkTrigger
/* 80399C70  2C 03 00 00 */	cmpwi r3, 0
/* 80399C74  41 82 00 24 */	beq lbl_80399C98
/* 80399C78  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80399C7C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80399C80  40 81 00 18 */	ble lbl_80399C98
/* 80399C84  FF E0 00 90 */	fmr f31, f0
/* 80399C88  7F 9F E3 78 */	mr r31, r28
/* 80399C8C  48 00 00 0C */	b lbl_80399C98
lbl_80399C90:
/* 80399C90  7F 9F E3 78 */	mr r31, r28
/* 80399C94  48 00 00 18 */	b lbl_80399CAC
lbl_80399C98:
/* 80399C98  3B 9C 00 01 */	addi r28, r28, 1
/* 80399C9C  3B DE 00 10 */	addi r30, r30, 0x10
lbl_80399CA0:
/* 80399CA0  80 1D 02 F0 */	lwz r0, 0x2f0(r29)
/* 80399CA4  7C 1C 00 00 */	cmpw r28, r0
/* 80399CA8  41 80 FF 24 */	blt lbl_80399BCC
lbl_80399CAC:
/* 80399CAC  7F E3 FB 78 */	mr r3, r31
/* 80399CB0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80399CB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80399CB8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80399CBC  4B D0 12 59 */	bl func_8009AF14
/* 80399CC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80399CC4  7C 08 03 A6 */	mtlr r0
/* 80399CC8  38 21 00 30 */	addi r1, r1, 0x30
/* 80399CCC  4E 80 00 20 */	blr 
