lbl_8057C344:
/* 8057C344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C348  7C 08 02 A6 */	mflr r0
/* 8057C34C  38 80 00 01 */	li r4, 1
/* 8057C350  38 A0 00 00 */	li r5, 0
/* 8057C354  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C358  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057C35C  7C 7F 1B 78 */	mr r31, r3
/* 8057C360  38 60 00 04 */	li r3, 4
/* 8057C364  4B E1 C0 D5 */	bl mDemo_Set_OrderValue
/* 8057C368  38 9F 00 28 */	addi r4, r31, 0x28
/* 8057C36C  38 60 00 69 */	li r3, 0x69
/* 8057C370  48 0B 1C 39 */	bl sAdo_OngenTrgStart
/* 8057C374  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057C378  A0 9F 09 F8 */	lhz r4, 0x9f8(r31)
/* 8057C37C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057C380  38 A0 00 01 */	li r5, 1
/* 8057C384  3C 63 00 02 */	addis r3, r3, 2
/* 8057C388  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8057C38C  4B E6 4B 7D */	bl mPr_SetFreePossessionItem
/* 8057C390  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057C394  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057C398  3C 83 00 03 */	addis r4, r3, 3
/* 8057C39C  80 64 DB EC */	lwz r3, -0x2414(r4)
/* 8057C3A0  38 03 00 01 */	addi r0, r3, 1
/* 8057C3A4  90 04 DB EC */	stw r0, -0x2414(r4)
/* 8057C3A8  4B E4 33 01 */	bl func_803BF6A8
/* 8057C3AC  4B E4 49 95 */	bl mMsg_Set_LockContinue
/* 8057C3B0  38 00 00 01 */	li r0, 1
/* 8057C3B4  98 1F 08 BE */	stb r0, 0x8be(r31)
/* 8057C3B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C3BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057C3C0  7C 08 03 A6 */	mtlr r0
/* 8057C3C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C3C8  4E 80 00 20 */	blr 
