lbl_8063FA04:
/* 8063FA04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063FA08  7C 08 02 A6 */	mflr r0
/* 8063FA0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063FA10  39 61 00 20 */	addi r11, r1, 0x20
/* 8063FA14  4B A5 B4 C1 */	bl func_8009AED4
/* 8063FA18  A8 03 00 02 */	lha r0, 2(r3)
/* 8063FA1C  2C 00 00 01 */	cmpwi r0, 1
/* 8063FA20  40 82 00 0C */	bne lbl_8063FA2C
/* 8063FA24  83 A5 20 90 */	lwz r29, 0x2090(r5)
/* 8063FA28  48 00 00 08 */	b lbl_8063FA30
lbl_8063FA2C:
/* 8063FA2C  83 A5 00 A0 */	lwz r29, 0xa0(r5)
lbl_8063FA30:
/* 8063FA30  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063FA34  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063FA38  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063FA3C  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8063FA40  38 7E 00 08 */	addi r3, r30, 8
/* 8063FA44  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063FA48  90 1E 00 00 */	stw r0, 0(r30)
/* 8063FA4C  80 65 00 00 */	lwz r3, 0(r5)
/* 8063FA50  4B DC D9 85 */	bl _Matrix_to_Mtx_new
/* 8063FA54  38 00 00 06 */	li r0, 6
/* 8063FA58  90 7E 00 04 */	stw r3, 4(r30)
/* 8063FA5C  7C 1D 03 96 */	divwu r0, r29, r0
/* 8063FA60  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 8063FA64  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 8063FA68  3C 60 80 6E */	lis r3, fTSW_texture_table@ha /* 0x806DF9E0@ha */
/* 8063FA6C  3C A0 81 0F */	lis r5, int_tak_stew_nabe_on_model@ha /* 0x810F5280@ha */
/* 8063FA70  38 C8 00 08 */	addi r6, r8, 8
/* 8063FA74  90 DF 02 D0 */	stw r6, 0x2d0(r31)
/* 8063FA78  38 84 00 20 */	addi r4, r4, 0x0020 /* 0xDB060020@l */
/* 8063FA7C  38 E3 F9 E0 */	addi r7, r3, fTSW_texture_table@l /* 0x806DF9E0@l */
/* 8063FA80  54 00 17 7A */	rlwinm r0, r0, 2, 0x1d, 0x1d
/* 8063FA84  90 88 00 00 */	stw r4, 0(r8)
/* 8063FA88  3C 80 81 0F */	lis r4, int_tak_stew_nabe_onT_model@ha /* 0x810F52F8@ha */
/* 8063FA8C  3C 60 81 0F */	lis r3, int_tak_stew_a1T_model@ha /* 0x810F53A0@ha */
/* 8063FA90  3C C0 DE 00 */	lis r6, 0xde00
/* 8063FA94  7C E7 00 2E */	lwzx r7, r7, r0
/* 8063FA98  38 03 53 A0 */	addi r0, r3, int_tak_stew_a1T_model@l /* 0x810F53A0@l */
/* 8063FA9C  38 A5 52 80 */	addi r5, r5, int_tak_stew_nabe_on_model@l /* 0x810F5280@l */
/* 8063FAA0  38 84 52 F8 */	addi r4, r4, int_tak_stew_nabe_onT_model@l /* 0x810F52F8@l */
/* 8063FAA4  90 E8 00 04 */	stw r7, 4(r8)
/* 8063FAA8  39 61 00 20 */	addi r11, r1, 0x20
/* 8063FAAC  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 8063FAB0  38 67 00 08 */	addi r3, r7, 8
/* 8063FAB4  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063FAB8  90 C7 00 00 */	stw r6, 0(r7)
/* 8063FABC  90 A7 00 04 */	stw r5, 4(r7)
/* 8063FAC0  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8063FAC4  38 65 00 08 */	addi r3, r5, 8
/* 8063FAC8  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063FACC  90 C5 00 00 */	stw r6, 0(r5)
/* 8063FAD0  90 85 00 04 */	stw r4, 4(r5)
/* 8063FAD4  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063FAD8  38 64 00 08 */	addi r3, r4, 8
/* 8063FADC  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063FAE0  90 C4 00 00 */	stw r6, 0(r4)
/* 8063FAE4  90 04 00 04 */	stw r0, 4(r4)
/* 8063FAE8  4B A5 B4 39 */	bl func_8009AF20
/* 8063FAEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063FAF0  7C 08 03 A6 */	mtlr r0
/* 8063FAF4  38 21 00 20 */	addi r1, r1, 0x20
/* 8063FAF8  4E 80 00 20 */	blr 
