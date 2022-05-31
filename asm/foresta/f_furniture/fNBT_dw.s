lbl_80632ABC:
/* 80632ABC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80632AC0  7C 08 02 A6 */	mflr r0
/* 80632AC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80632AC8  39 61 00 30 */	addi r11, r1, 0x30
/* 80632ACC  4B A6 84 05 */	bl func_8009AED0
/* 80632AD0  7C BC 2B 78 */	mr r28, r5
/* 80632AD4  38 00 00 00 */	li r0, 0
/* 80632AD8  93 81 00 08 */	stw r28, 8(r1)
/* 80632ADC  38 80 00 10 */	li r4, 0x10
/* 80632AE0  38 A0 00 00 */	li r5, 0
/* 80632AE4  38 C0 00 01 */	li r6, 1
/* 80632AE8  90 61 00 0C */	stw r3, 0xc(r1)
/* 80632AEC  38 60 00 10 */	li r3, 0x10
/* 80632AF0  38 E0 00 10 */	li r7, 0x10
/* 80632AF4  39 00 00 10 */	li r8, 0x10
/* 80632AF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80632AFC  39 20 00 00 */	li r9, 0
/* 80632B00  39 40 00 00 */	li r10, 0
/* 80632B04  4B FF C0 01 */	bl fFTR_GetTwoTileGfx
/* 80632B08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80632B0C  41 82 00 C4 */	beq lbl_80632BD0
/* 80632B10  83 DC 00 00 */	lwz r30, 0(r28)
/* 80632B14  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80632B18  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80632B1C  83 BE 02 D0 */	lwz r29, 0x2d0(r30)
/* 80632B20  38 7D 00 08 */	addi r3, r29, 8
/* 80632B24  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80632B28  90 1D 00 00 */	stw r0, 0(r29)
/* 80632B2C  80 7C 00 00 */	lwz r3, 0(r28)
/* 80632B30  4B DD A8 A5 */	bl _Matrix_to_Mtx_new
/* 80632B34  90 7D 00 04 */	stw r3, 4(r29)
/* 80632B38  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80632B3C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80632B40  83 BE 02 E0 */	lwz r29, 0x2e0(r30)
/* 80632B44  38 7D 00 08 */	addi r3, r29, 8
/* 80632B48  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80632B4C  90 1D 00 00 */	stw r0, 0(r29)
/* 80632B50  80 7C 00 00 */	lwz r3, 0(r28)
/* 80632B54  4B DD A8 81 */	bl _Matrix_to_Mtx_new
/* 80632B58  90 7D 00 04 */	stw r3, 4(r29)
/* 80632B5C  3C C0 80 F4 */	lis r6, int_nog_beachtable_bodyT_model@ha /* 0x80F3F610@ha */
/* 80632B60  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060024@ha */
/* 80632B64  3C 80 80 F4 */	lis r4, int_nog_beachtable_glassT_model@ha /* 0x80F3F788@ha */
/* 80632B68  81 1E 02 D0 */	lwz r8, 0x2d0(r30)
/* 80632B6C  3C 60 80 F4 */	lis r3, int_nog_beachtable_bubbleT_model@ha /* 0x80F3F858@ha */
/* 80632B70  3C E0 DE 00 */	lis r7, 0xde00
/* 80632B74  38 C6 F6 10 */	addi r6, r6, int_nog_beachtable_bodyT_model@l /* 0x80F3F610@l */
/* 80632B78  38 08 00 08 */	addi r0, r8, 8
/* 80632B7C  38 A5 00 24 */	addi r5, r5, 0x0024 /* 0xDB060024@l */
/* 80632B80  90 1E 02 D0 */	stw r0, 0x2d0(r30)
/* 80632B84  38 84 F7 88 */	addi r4, r4, int_nog_beachtable_glassT_model@l /* 0x80F3F788@l */
/* 80632B88  38 03 F8 58 */	addi r0, r3, int_nog_beachtable_bubbleT_model@l /* 0x80F3F858@l */
/* 80632B8C  90 E8 00 00 */	stw r7, 0(r8)
/* 80632B90  90 C8 00 04 */	stw r6, 4(r8)
/* 80632B94  80 DE 02 E0 */	lwz r6, 0x2e0(r30)
/* 80632B98  38 66 00 08 */	addi r3, r6, 8
/* 80632B9C  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80632BA0  90 A6 00 00 */	stw r5, 0(r6)
/* 80632BA4  93 E6 00 04 */	stw r31, 4(r6)
/* 80632BA8  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 80632BAC  38 65 00 08 */	addi r3, r5, 8
/* 80632BB0  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80632BB4  90 E5 00 00 */	stw r7, 0(r5)
/* 80632BB8  90 85 00 04 */	stw r4, 4(r5)
/* 80632BBC  80 9E 02 E0 */	lwz r4, 0x2e0(r30)
/* 80632BC0  38 64 00 08 */	addi r3, r4, 8
/* 80632BC4  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80632BC8  90 E4 00 00 */	stw r7, 0(r4)
/* 80632BCC  90 04 00 04 */	stw r0, 4(r4)
lbl_80632BD0:
/* 80632BD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80632BD4  4B A6 83 49 */	bl func_8009AF1C
/* 80632BD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80632BDC  7C 08 03 A6 */	mtlr r0
/* 80632BE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80632BE4  4E 80 00 20 */	blr 
