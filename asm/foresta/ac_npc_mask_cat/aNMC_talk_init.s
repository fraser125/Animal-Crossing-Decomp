lbl_8055F0E4:
/* 8055F0E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055F0E8  7C 08 02 A6 */	mflr r0
/* 8055F0EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055F0F0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055F0F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055F0F8  3C 63 00 03 */	addis r3, r3, 3
/* 8055F0FC  88 03 88 7F */	lbz r0, -0x7781(r3)
/* 8055F100  60 00 00 04 */	ori r0, r0, 4
/* 8055F104  98 03 88 7F */	stb r0, -0x7781(r3)
/* 8055F108  4B E3 B2 AD */	bl mDemo_Set_ListenAble
/* 8055F10C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055F110  38 60 00 01 */	li r3, 1
/* 8055F114  7C 08 03 A6 */	mtlr r0
/* 8055F118  38 21 00 10 */	addi r1, r1, 0x10
/* 8055F11C  4E 80 00 20 */	blr 
