lbl_8052A5D0:
/* 8052A5D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052A5D4  7C 08 02 A6 */	mflr r0
/* 8052A5D8  3C A0 80 6A */	lis r5, process@ha /* 0x806A1278@ha */
/* 8052A5DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052A5E0  38 00 00 00 */	li r0, 0
/* 8052A5E4  38 A5 12 78 */	addi r5, r5, process@l /* 0x806A1278@l */
/* 8052A5E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052A5EC  7C 9F 23 78 */	mr r31, r4
/* 8052A5F0  93 C1 00 08 */	stw r30, 8(r1)
/* 8052A5F4  7C 7E 1B 78 */	mr r30, r3
/* 8052A5F8  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 8052A5FC  54 80 10 3A */	slwi r0, r4, 2
/* 8052A600  93 E3 09 94 */	stw r31, 0x994(r3)
/* 8052A604  7C 05 00 2E */	lwzx r0, r5, r0
/* 8052A608  90 03 09 9C */	stw r0, 0x99c(r3)
/* 8052A60C  4B FF FC 19 */	bl aHM1_set_animation
/* 8052A610  7F C3 F3 78 */	mr r3, r30
/* 8052A614  7F E4 FB 78 */	mr r4, r31
/* 8052A618  4B FF FF 75 */	bl aHM1_set_spd_info
/* 8052A61C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052A620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052A624  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052A628  7C 08 03 A6 */	mtlr r0
/* 8052A62C  38 21 00 10 */	addi r1, r1, 0x10
/* 8052A630  4E 80 00 20 */	blr 
