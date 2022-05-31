lbl_80636E74:
/* 80636E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80636E78  7C 08 02 A6 */	mflr r0
/* 80636E7C  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80636E80  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80636E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80636E88  3C C6 00 02 */	addis r6, r6, 2
/* 80636E8C  81 06 60 8C */	lwz r8, 0x608c(r6)
/* 80636E90  28 08 00 00 */	cmplwi r8, 0
/* 80636E94  41 82 00 20 */	beq lbl_80636EB4
/* 80636E98  81 88 00 34 */	lwz r12, 0x34(r8)
/* 80636E9C  3C E0 80 65 */	lis r7, data_8064D274@ha /* 0x8064D274@ha */
/* 80636EA0  3C C0 80 65 */	lis r6, lit_627@ha /* 0x8064D290@ha */
/* 80636EA4  C0 27 D2 74 */	lfs f1, data_8064D274@l(r7)  /* 0x8064D274@l */
/* 80636EA8  C0 46 D2 90 */	lfs f2, lit_627@l(r6)  /* 0x8064D290@l */
/* 80636EAC  7D 89 03 A6 */	mtctr r12
/* 80636EB0  4E 80 04 21 */	bctrl 
lbl_80636EB4:
/* 80636EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80636EB8  7C 08 03 A6 */	mtlr r0
/* 80636EBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80636EC0  4E 80 00 20 */	blr 
