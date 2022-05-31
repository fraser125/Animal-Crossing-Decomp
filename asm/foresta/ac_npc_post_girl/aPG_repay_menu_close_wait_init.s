lbl_8056D5E4:
/* 8056D5E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D5E8  7C 08 02 A6 */	mflr r0
/* 8056D5EC  38 A0 00 00 */	li r5, 0
/* 8056D5F0  38 C0 00 00 */	li r6, 0
/* 8056D5F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D5F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056D5FC  7C 7F 1B 78 */	mr r31, r3
/* 8056D600  38 64 1D EC */	addi r3, r4, 0x1dec
/* 8056D604  38 80 00 07 */	li r4, 7
/* 8056D608  4B E8 20 D5 */	bl mSM_open_submenu
/* 8056D60C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056D610  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056D614  3C 63 00 02 */	addis r3, r3, 2
/* 8056D618  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8056D61C  80 03 00 90 */	lwz r0, 0x90(r3)
/* 8056D620  90 1F 09 A8 */	stw r0, 0x9a8(r31)
/* 8056D624  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056D628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D62C  7C 08 03 A6 */	mtlr r0
/* 8056D630  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D634  4E 80 00 20 */	blr 
