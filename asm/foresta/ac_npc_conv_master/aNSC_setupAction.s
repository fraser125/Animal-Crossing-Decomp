lbl_8054AF1C:
/* 8054AF1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054AF20  7C 08 02 A6 */	mflr r0
/* 8054AF24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054AF28  39 61 00 20 */	addi r11, r1, 0x20
/* 8054AF2C  4B B4 FF A9 */	bl func_8009AED4
/* 8054AF30  7C BF 2B 78 */	mr r31, r5
/* 8054AF34  7C 7D 1B 78 */	mr r29, r3
/* 8054AF38  3C A0 80 6A */	lis r5, process@ha /* 0x806A4D98@ha */
/* 8054AF3C  93 E3 09 94 */	stw r31, 0x994(r3)
/* 8054AF40  57 E0 10 3A */	slwi r0, r31, 2
/* 8054AF44  7C 9E 23 78 */	mr r30, r4
/* 8054AF48  38 A5 4D 98 */	addi r5, r5, process@l /* 0x806A4D98@l */
/* 8054AF4C  7F E4 FB 78 */	mr r4, r31
/* 8054AF50  7C 05 00 2E */	lwzx r0, r5, r0
/* 8054AF54  90 03 09 9C */	stw r0, 0x99c(r3)
/* 8054AF58  4B FF AB 3D */	bl func_80545A94
/* 8054AF5C  7F A3 EB 78 */	mr r3, r29
/* 8054AF60  7F C4 F3 78 */	mr r4, r30
/* 8054AF64  7F E5 FB 78 */	mr r5, r31
/* 8054AF68  4B FF FF 81 */	bl aNSC_init_proc
/* 8054AF6C  39 61 00 20 */	addi r11, r1, 0x20
/* 8054AF70  4B B4 FF B1 */	bl func_8009AF20
/* 8054AF74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054AF78  7C 08 03 A6 */	mtlr r0
/* 8054AF7C  38 21 00 20 */	addi r1, r1, 0x20
/* 8054AF80  4E 80 00 20 */	blr 
