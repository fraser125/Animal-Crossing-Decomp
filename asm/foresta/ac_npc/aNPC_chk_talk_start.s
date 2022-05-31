lbl_80535B70:
/* 80535B70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80535B74  7C 08 02 A6 */	mflr r0
/* 80535B78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80535B7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80535B80  4B B6 53 55 */	bl func_8009AED4
/* 80535B84  7C 7D 1B 78 */	mr r29, r3
/* 80535B88  3B C0 00 00 */	li r30, 0
/* 80535B8C  83 E3 08 F0 */	lwz r31, 0x8f0(r3)
/* 80535B90  28 1F 00 00 */	cmplwi r31, 0
/* 80535B94  41 82 01 04 */	beq lbl_80535C98
/* 80535B98  88 1D 08 33 */	lbz r0, 0x833(r29)
/* 80535B9C  2C 00 00 01 */	cmpwi r0, 1
/* 80535BA0  41 82 00 C0 */	beq lbl_80535C60
/* 80535BA4  40 80 00 10 */	bge lbl_80535BB4
/* 80535BA8  2C 00 00 00 */	cmpwi r0, 0
/* 80535BAC  40 80 00 14 */	bge lbl_80535BC0
/* 80535BB0  48 00 00 E8 */	b lbl_80535C98
lbl_80535BB4:
/* 80535BB4  2C 00 00 03 */	cmpwi r0, 3
/* 80535BB8  40 80 00 E0 */	bge lbl_80535C98
/* 80535BBC  48 00 00 C4 */	b lbl_80535C80
lbl_80535BC0:
/* 80535BC0  38 60 00 08 */	li r3, 8
/* 80535BC4  7F A4 EB 78 */	mr r4, r29
/* 80535BC8  4B E6 46 9D */	bl mDemo_Check
/* 80535BCC  2C 03 00 01 */	cmpwi r3, 1
/* 80535BD0  41 82 00 40 */	beq lbl_80535C10
/* 80535BD4  7F A4 EB 78 */	mr r4, r29
/* 80535BD8  38 60 00 07 */	li r3, 7
/* 80535BDC  4B E6 46 89 */	bl mDemo_Check
/* 80535BE0  2C 03 00 01 */	cmpwi r3, 1
/* 80535BE4  41 82 00 2C */	beq lbl_80535C10
/* 80535BE8  7F E4 FB 78 */	mr r4, r31
/* 80535BEC  38 60 00 08 */	li r3, 8
/* 80535BF0  4B E6 46 75 */	bl mDemo_Check
/* 80535BF4  2C 03 00 01 */	cmpwi r3, 1
/* 80535BF8  41 82 00 18 */	beq lbl_80535C10
/* 80535BFC  7F E4 FB 78 */	mr r4, r31
/* 80535C00  38 60 00 07 */	li r3, 7
/* 80535C04  4B E6 46 61 */	bl mDemo_Check
/* 80535C08  2C 03 00 01 */	cmpwi r3, 1
/* 80535C0C  40 82 00 30 */	bne lbl_80535C3C
lbl_80535C10:
/* 80535C10  80 1D 08 F0 */	lwz r0, 0x8f0(r29)
/* 80535C14  7C 00 F8 40 */	cmplw r0, r31
/* 80535C18  40 82 00 0C */	bne lbl_80535C24
/* 80535C1C  38 00 00 00 */	li r0, 0
/* 80535C20  90 1D 08 F0 */	stw r0, 0x8f0(r29)
lbl_80535C24:
/* 80535C24  80 1F 08 F0 */	lwz r0, 0x8f0(r31)
/* 80535C28  7C 00 E8 40 */	cmplw r0, r29
/* 80535C2C  40 82 00 6C */	bne lbl_80535C98
/* 80535C30  38 00 00 00 */	li r0, 0
/* 80535C34  90 1F 08 F0 */	stw r0, 0x8f0(r31)
/* 80535C38  48 00 00 60 */	b lbl_80535C98
lbl_80535C3C:
/* 80535C3C  3C 80 80 6A */	lis r4, data_806A1400@ha /* 0x806A1400@ha */
/* 80535C40  7F A3 EB 78 */	mr r3, r29
/* 80535C44  38 E4 14 00 */	addi r7, r4, data_806A1400@l /* 0x806A1400@l */
/* 80535C48  38 A0 00 07 */	li r5, 7
/* 80535C4C  38 80 00 04 */	li r4, 4
/* 80535C50  38 C0 00 02 */	li r6, 2
/* 80535C54  4B FF B9 A9 */	bl aNPC_set_request_act
/* 80535C58  3B C0 00 01 */	li r30, 1
/* 80535C5C  48 00 00 3C */	b lbl_80535C98
lbl_80535C60:
/* 80535C60  3C 80 80 6A */	lis r4, data_806A1400@ha /* 0x806A1400@ha */
/* 80535C64  88 BD 09 71 */	lbz r5, 0x971(r29)
/* 80535C68  38 E4 14 00 */	addi r7, r4, data_806A1400@l /* 0x806A1400@l */
/* 80535C6C  38 C0 00 00 */	li r6, 0
/* 80535C70  38 80 00 04 */	li r4, 4
/* 80535C74  4B FF B9 89 */	bl aNPC_set_request_act
/* 80535C78  3B C0 00 01 */	li r30, 1
/* 80535C7C  48 00 00 1C */	b lbl_80535C98
lbl_80535C80:
/* 80535C80  4B FF 7E E5 */	bl aNPC_chk_right_hand
/* 80535C84  2C 03 00 01 */	cmpwi r3, 1
/* 80535C88  40 82 00 0C */	bne lbl_80535C94
/* 80535C8C  7F A3 EB 78 */	mr r3, r29
/* 80535C90  4B FF 7F 89 */	bl aNPC_chk_left_hand
lbl_80535C94:
/* 80535C94  3B C0 00 01 */	li r30, 1
lbl_80535C98:
/* 80535C98  7F C3 F3 78 */	mr r3, r30
/* 80535C9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80535CA0  4B B6 52 81 */	bl func_8009AF20
/* 80535CA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80535CA8  7C 08 03 A6 */	mtlr r0
/* 80535CAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80535CB0  4E 80 00 20 */	blr 
