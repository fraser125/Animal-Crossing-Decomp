lbl_804EE3A8:
/* 804EE3A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE3AC  7C 08 02 A6 */	mflr r0
/* 804EE3B0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804EE3B4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804EE3B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE3BC  3C 63 00 02 */	addis r3, r3, 2
/* 804EE3C0  80 63 60 8C */	lwz r3, 0x608c(r3)
/* 804EE3C4  28 03 00 00 */	cmplwi r3, 0
/* 804EE3C8  41 82 00 10 */	beq lbl_804EE3D8
/* 804EE3CC  81 83 00 50 */	lwz r12, 0x50(r3)
/* 804EE3D0  7D 89 03 A6 */	mtctr r12
/* 804EE3D4  4E 80 04 21 */	bctrl 
lbl_804EE3D8:
/* 804EE3D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE3DC  7C 08 03 A6 */	mtlr r0
/* 804EE3E0  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE3E4  4E 80 00 20 */	blr 
