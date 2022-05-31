lbl_80484A10:
/* 80484A10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80484A14  7C 08 02 A6 */	mflr r0
/* 80484A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484A1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80484A20  7C 9F 23 78 */	mr r31, r4
/* 80484A24  93 C1 00 08 */	stw r30, 8(r1)
/* 80484A28  7C 7E 1B 78 */	mr r30, r3
/* 80484A2C  7F E3 FB 78 */	mr r3, r31
/* 80484A30  4B F5 4C 11 */	bl get_player_actor_withoutCheck
/* 80484A34  3C 80 80 64 */	lis r4, lit_555@ha /* 0x80644B90@ha */
/* 80484A38  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80484A3C  C0 04 4B 90 */	lfs f0, lit_555@l(r4)  /* 0x80644B90@l */
/* 80484A40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80484A44  40 81 00 20 */	ble lbl_80484A64
/* 80484A48  3C 80 80 64 */	lis r4, lit_554@ha /* 0x80644B8C@ha */
/* 80484A4C  7F C3 F3 78 */	mr r3, r30
/* 80484A50  C0 24 4B 8C */	lfs f1, lit_554@l(r4)  /* 0x80644B8C@l */
/* 80484A54  7F E5 FB 78 */	mr r5, r31
/* 80484A58  38 80 00 01 */	li r4, 1
/* 80484A5C  4B FF FE 8D */	bl aPT_CheckTalkAble
/* 80484A60  48 00 00 08 */	b lbl_80484A68
lbl_80484A64:
/* 80484A64  38 60 00 00 */	li r3, 0
lbl_80484A68:
/* 80484A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80484A6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80484A70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80484A74  7C 08 03 A6 */	mtlr r0
/* 80484A78  38 21 00 10 */	addi r1, r1, 0x10
/* 80484A7C  4E 80 00 20 */	blr 
