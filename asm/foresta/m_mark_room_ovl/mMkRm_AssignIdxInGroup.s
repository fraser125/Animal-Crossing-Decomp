lbl_804D35C4:
/* 804D35C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D35C8  7C 08 02 A6 */	mflr r0
/* 804D35CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D35D0  39 61 00 20 */	addi r11, r1, 0x20
/* 804D35D4  4B BC 78 FD */	bl func_8009AED0
/* 804D35D8  3C 80 80 6A */	lis r4, data_8069C9F0@ha /* 0x8069C9F0@ha */
/* 804D35DC  3C 60 80 6A */	lis r3, assign_func_table@ha /* 0x8069E45C@ha */
/* 804D35E0  3B A4 C9 F0 */	addi r29, r4, data_8069C9F0@l /* 0x8069C9F0@l */
/* 804D35E4  3B 80 00 00 */	li r28, 0
/* 804D35E8  3B C3 E4 5C */	addi r30, r3, assign_func_table@l /* 0x8069E45C@l */
/* 804D35EC  3B E0 00 00 */	li r31, 0
lbl_804D35F0:
/* 804D35F0  7C 1D F8 AE */	lbzx r0, r29, r31
/* 804D35F4  2C 00 00 00 */	cmpwi r0, 0
/* 804D35F8  41 80 00 20 */	blt lbl_804D3618
/* 804D35FC  2C 00 00 04 */	cmpwi r0, 4
/* 804D3600  40 80 00 18 */	bge lbl_804D3618
/* 804D3604  54 00 10 3A */	slwi r0, r0, 2
/* 804D3608  7F 83 E3 78 */	mr r3, r28
/* 804D360C  7D 9E 00 2E */	lwzx r12, r30, r0
/* 804D3610  7D 89 03 A6 */	mtctr r12
/* 804D3614  4E 80 04 21 */	bctrl 
lbl_804D3618:
/* 804D3618  3B 9C 00 01 */	addi r28, r28, 1
/* 804D361C  3B FF 00 03 */	addi r31, r31, 3
/* 804D3620  2C 1C 00 3C */	cmpwi r28, 0x3c
/* 804D3624  41 80 FF CC */	blt lbl_804D35F0
/* 804D3628  39 61 00 20 */	addi r11, r1, 0x20
/* 804D362C  4B BC 78 F1 */	bl func_8009AF1C
/* 804D3630  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D3634  7C 08 03 A6 */	mtlr r0
/* 804D3638  38 21 00 20 */	addi r1, r1, 0x20
/* 804D363C  4E 80 00 20 */	blr 
