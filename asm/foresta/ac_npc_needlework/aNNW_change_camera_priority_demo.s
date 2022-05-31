lbl_80561EF0:
/* 80561EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80561EF4  7C 08 02 A6 */	mflr r0
/* 80561EF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80561EFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80561F00  7C 9F 23 78 */	mr r31, r4
/* 80561F04  93 C1 00 08 */	stw r30, 8(r1)
/* 80561F08  7C 7E 1B 78 */	mr r30, r3
/* 80561F0C  7F E3 FB 78 */	mr r3, r31
/* 80561F10  7F C4 F3 78 */	mr r4, r30
/* 80561F14  4B FF FA 45 */	bl aNNW_search_sister
/* 80561F18  7C 60 1B 78 */	mr r0, r3
/* 80561F1C  7F E3 FB 78 */	mr r3, r31
/* 80561F20  7C 1F 03 78 */	mr r31, r0
/* 80561F24  7F C5 F3 78 */	mr r5, r30
/* 80561F28  7F E4 FB 78 */	mr r4, r31
/* 80561F2C  38 C0 00 06 */	li r6, 6
/* 80561F30  4B E1 FF D1 */	bl Camera2_request_main_needlework_talk
/* 80561F34  A0 1E 00 06 */	lhz r0, 6(r30)
/* 80561F38  28 00 D0 70 */	cmplwi r0, 0xd070
/* 80561F3C  40 82 00 2C */	bne lbl_80561F68
/* 80561F40  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80561F44  7F C3 F3 78 */	mr r3, r30
/* 80561F48  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80561F4C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80561F50  3C 84 00 02 */	addis r4, r4, 2
/* 80561F54  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80561F58  80 84 60 4C */	lwz r4, 0x604c(r4)
/* 80561F5C  81 84 01 1C */	lwz r12, 0x11c(r4)
/* 80561F60  7D 89 03 A6 */	mtctr r12
/* 80561F64  4E 80 04 21 */	bctrl 
lbl_80561F68:
/* 80561F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80561F6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80561F70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80561F74  7C 08 03 A6 */	mtlr r0
/* 80561F78  38 21 00 10 */	addi r1, r1, 0x10
/* 80561F7C  4E 80 00 20 */	blr 
