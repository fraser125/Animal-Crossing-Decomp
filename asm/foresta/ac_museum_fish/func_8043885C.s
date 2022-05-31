lbl_8043885C:
/* 8043885C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80438860  7C 08 02 A6 */	mflr r0
/* 80438864  90 01 00 14 */	stw r0, 0x14(r1)
/* 80438868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043886C  7C 9F 23 78 */	mr r31, r4
/* 80438870  93 C1 00 08 */	stw r30, 8(r1)
/* 80438874  7C 7E 1B 78 */	mr r30, r3
/* 80438878  4B FF BC 91 */	bl mfish_onefish_ct
/* 8043887C  7F C3 F3 78 */	mr r3, r30
/* 80438880  7F E4 FB 78 */	mr r4, r31
/* 80438884  4B FF B6 FD */	bl mfish_base_ct
/* 80438888  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043888C  3C 60 80 44 */	lis r3, mfish_afish_normal_process@ha /* 0x80438FEC@ha */
/* 80438890  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 80438894  38 63 8F EC */	addi r3, r3, mfish_afish_normal_process@l /* 0x80438FEC@l */
/* 80438898  38 00 00 00 */	li r0, 0
/* 8043889C  D0 1E 05 EC */	stfs f0, 0x5ec(r30)
/* 804388A0  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 804388A4  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 804388A8  90 7E 00 34 */	stw r3, 0x34(r30)
/* 804388AC  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 804388B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804388B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804388B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804388BC  7C 08 03 A6 */	mtlr r0
/* 804388C0  38 21 00 10 */	addi r1, r1, 0x10
/* 804388C4  4E 80 00 20 */	blr 
