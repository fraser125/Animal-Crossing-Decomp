lbl_80560CC0:
/* 80560CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80560CC4  7C 08 02 A6 */	mflr r0
/* 80560CC8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80560CCC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80560CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80560CD4  3C 63 00 02 */	addis r3, r3, 2
/* 80560CD8  80 83 61 3C */	lwz r4, 0x613c(r3)
/* 80560CDC  38 63 3F 20 */	addi r3, r3, 0x3f20
/* 80560CE0  4B E7 F4 41 */	bl mPr_CopyPersonalID
/* 80560CE4  4B E5 E9 C5 */	bl func_803BF6A8
/* 80560CE8  4B E5 EE A1 */	bl mMsg_request_main_appear_wait_type1
/* 80560CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80560CF0  7C 08 03 A6 */	mtlr r0
/* 80560CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80560CF8  4E 80 00 20 */	blr 
