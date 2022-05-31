lbl_8039F3F4:
/* 8039F3F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039F3F8  7C 08 02 A6 */	mflr r0
/* 8039F3FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039F400  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039F404  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039F408  3C 83 00 02 */	addis r4, r3, 2
/* 8039F40C  38 64 41 44 */	addi r3, r4, 0x4144
/* 8039F410  38 84 61 20 */	addi r4, r4, 0x6120
/* 8039F414  48 06 7E 21 */	bl lbRTC_TimeCopy
/* 8039F418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039F41C  7C 08 03 A6 */	mtlr r0
/* 8039F420  38 21 00 10 */	addi r1, r1, 0x10
/* 8039F424  4E 80 00 20 */	blr 
