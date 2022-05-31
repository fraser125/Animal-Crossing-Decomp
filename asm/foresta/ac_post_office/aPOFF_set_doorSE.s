lbl_805B7BC0:
/* 805B7BC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B7BC4  7C 08 02 A6 */	mflr r0
/* 805B7BC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B7BCC  39 61 00 20 */	addi r11, r1, 0x20
/* 805B7BD0  4B AE 33 01 */	bl func_8009AED0
/* 805B7BD4  7C 7C 1B 78 */	mr r28, r3
/* 805B7BD8  3C 60 80 6C */	lis r3, data_806C62C0@ha /* 0x806C62C0@ha */
/* 805B7BDC  80 1C 02 B0 */	lwz r0, 0x2b0(r28)
/* 805B7BE0  3B E3 62 C0 */	addi r31, r3, data_806C62C0@l /* 0x806C62C0@l */
/* 805B7BE4  2C 00 00 02 */	cmpwi r0, 2
/* 805B7BE8  41 82 00 24 */	beq lbl_805B7C0C
/* 805B7BEC  40 80 00 10 */	bge lbl_805B7BFC
/* 805B7BF0  2C 00 00 01 */	cmpwi r0, 1
/* 805B7BF4  40 80 00 10 */	bge lbl_805B7C04
/* 805B7BF8  48 00 00 14 */	b lbl_805B7C0C
lbl_805B7BFC:
/* 805B7BFC  2C 00 00 04 */	cmpwi r0, 4
/* 805B7C00  40 80 00 0C */	bge lbl_805B7C0C
lbl_805B7C04:
/* 805B7C04  3B DF 00 64 */	addi r30, r31, 0x64
/* 805B7C08  48 00 00 08 */	b lbl_805B7C10
lbl_805B7C0C:
/* 805B7C0C  3B DF 00 74 */	addi r30, r31, 0x74
lbl_805B7C10:
/* 805B7C10  3B A0 00 00 */	li r29, 0
lbl_805B7C14:
/* 805B7C14  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B7C18  38 7C 01 78 */	addi r3, r28, 0x178
/* 805B7C1C  4B DB 88 6D */	bl cKF_FrameControl_passCheck_now
/* 805B7C20  2C 03 00 00 */	cmpwi r3, 0
/* 805B7C24  41 82 00 1C */	beq lbl_805B7C40
/* 805B7C28  57 A0 08 3C */	slwi r0, r29, 1
/* 805B7C2C  38 7F 00 84 */	addi r3, r31, 0x84
/* 805B7C30  7C 83 02 2E */	lhzx r4, r3, r0
/* 805B7C34  7F 83 E3 78 */	mr r3, r28
/* 805B7C38  4B FF FF 5D */	bl func_805B7B94
/* 805B7C3C  48 00 00 14 */	b lbl_805B7C50
lbl_805B7C40:
/* 805B7C40  3B BD 00 01 */	addi r29, r29, 1
/* 805B7C44  3B DE 00 04 */	addi r30, r30, 4
/* 805B7C48  2C 1D 00 04 */	cmpwi r29, 4
/* 805B7C4C  41 80 FF C8 */	blt lbl_805B7C14
lbl_805B7C50:
/* 805B7C50  39 61 00 20 */	addi r11, r1, 0x20
/* 805B7C54  4B AE 32 C9 */	bl func_8009AF1C
/* 805B7C58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B7C5C  7C 08 03 A6 */	mtlr r0
/* 805B7C60  38 21 00 20 */	addi r1, r1, 0x20
/* 805B7C64  4E 80 00 20 */	blr 
