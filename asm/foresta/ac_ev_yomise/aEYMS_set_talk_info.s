lbl_80526BE8:
/* 80526BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80526BEC  7C 08 02 A6 */	mflr r0
/* 80526BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80526BF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80526BF8  93 C1 00 08 */	stw r30, 8(r1)
/* 80526BFC  7C 7E 1B 78 */	mr r30, r3
/* 80526C00  4B FF F7 29 */	bl func_80526328
/* 80526C04  7C 7F 1B 78 */	mr r31, r3
/* 80526C08  38 60 00 00 */	li r3, 0
/* 80526C0C  4B FF F7 45 */	bl aYMS_check_goods_cnt
/* 80526C10  2C 03 00 00 */	cmpwi r3, 0
/* 80526C14  40 82 00 14 */	bne lbl_80526C28
/* 80526C18  38 00 00 04 */	li r0, 4
/* 80526C1C  38 60 17 57 */	li r3, 0x1757
/* 80526C20  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80526C24  48 00 00 40 */	b lbl_80526C64
lbl_80526C28:
/* 80526C28  A8 1F 00 12 */	lha r0, 0x12(r31)
/* 80526C2C  3C 60 80 6A */	lis r3, msg_no@ha /* 0x806A0E90@ha */
/* 80526C30  3C 80 80 6A */	lis r4, price@ha /* 0x806A0E98@ha */
/* 80526C34  38 A0 00 01 */	li r5, 1
/* 80526C38  54 00 08 3C */	slwi r0, r0, 1
/* 80526C3C  38 63 0E 90 */	addi r3, r3, msg_no@l /* 0x806A0E90@l */
/* 80526C40  7C 63 02 AE */	lhax r3, r3, r0
/* 80526C44  38 84 0E 98 */	addi r4, r4, price@l /* 0x806A0E98@l */
/* 80526C48  38 00 00 00 */	li r0, 0
/* 80526C4C  90 BE 09 9C */	stw r5, 0x99c(r30)
/* 80526C50  A8 BF 00 12 */	lha r5, 0x12(r31)
/* 80526C54  54 A5 08 3C */	slwi r5, r5, 1
/* 80526C58  7C 84 2A 2E */	lhzx r4, r4, r5
/* 80526C5C  90 9E 09 A8 */	stw r4, 0x9a8(r30)
/* 80526C60  B0 1E 09 A2 */	sth r0, 0x9a2(r30)
lbl_80526C64:
/* 80526C64  4B E7 18 B1 */	bl mDemo_Set_msg_num
/* 80526C68  38 60 00 09 */	li r3, 9
/* 80526C6C  4B E7 1C B5 */	bl mDemo_Set_camera
/* 80526C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80526C74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80526C78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80526C7C  7C 08 03 A6 */	mtlr r0
/* 80526C80  38 21 00 10 */	addi r1, r1, 0x10
/* 80526C84  4E 80 00 20 */	blr 
