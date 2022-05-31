lbl_804169E8:
/* 804169E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804169EC  7C 08 02 A6 */	mflr r0
/* 804169F0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804169F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804169F8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804169FC  3C A5 00 02 */	addis r5, r5, 2
/* 80416A00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80416A04  7C 7F 1B 78 */	mr r31, r3
/* 80416A08  80 05 61 10 */	lwz r0, 0x6110(r5)
/* 80416A0C  28 00 00 03 */	cmplwi r0, 3
/* 80416A10  40 82 00 10 */	bne lbl_80416A20
/* 80416A14  38 00 00 01 */	li r0, 1
/* 80416A18  90 1F 02 B8 */	stw r0, 0x2b8(r31)
/* 80416A1C  48 00 00 0C */	b lbl_80416A28
lbl_80416A20:
/* 80416A20  38 00 00 00 */	li r0, 0
/* 80416A24  90 1F 02 B8 */	stw r0, 0x2b8(r31)
lbl_80416A28:
/* 80416A28  3C A0 80 64 */	lis r5, lit_519@ha /* 0x80643BD8@ha */
/* 80416A2C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80416A30  C0 25 3B D8 */	lfs f1, lit_519@l(r5)  /* 0x80643BD8@l */
/* 80416A34  EC 00 08 2A */	fadds f0, f0, f1
/* 80416A38  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80416A3C  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80416A40  EC 00 08 2A */	fadds f0, f0, f1
/* 80416A44  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80416A48  4B FF FE D5 */	bl Cottage_actor_ct
/* 80416A4C  7F E3 FB 78 */	mr r3, r31
/* 80416A50  48 00 01 15 */	bl Cottage_move_closed_init
/* 80416A54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80416A58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80416A5C  7C 08 03 A6 */	mtlr r0
/* 80416A60  38 21 00 10 */	addi r1, r1, 0x10
/* 80416A64  4E 80 00 20 */	blr 
