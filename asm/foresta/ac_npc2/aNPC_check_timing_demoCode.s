lbl_8053CFA8:
/* 8053CFA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8053CFAC  7C 08 02 A6 */	mflr r0
/* 8053CFB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8053CFB4  39 61 00 30 */	addi r11, r1, 0x30
/* 8053CFB8  4B B5 DF 1D */	bl func_8009AED4
/* 8053CFBC  7C 60 1B 78 */	mr r0, r3
/* 8053CFC0  38 60 00 04 */	li r3, 4
/* 8053CFC4  7C 1D 03 78 */	mr r29, r0
/* 8053CFC8  38 80 00 03 */	li r4, 3
/* 8053CFCC  4B E5 B4 B1 */	bl mDemo_Get_OrderValue
/* 8053CFD0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8053CFD4  3B E0 00 01 */	li r31, 1
/* 8053CFD8  2C 00 00 04 */	cmpwi r0, 4
/* 8053CFDC  3B C0 00 01 */	li r30, 1
/* 8053CFE0  40 80 00 0C */	bge lbl_8053CFEC
/* 8053CFE4  2C 00 00 02 */	cmpwi r0, 2
/* 8053CFE8  40 80 00 18 */	bge lbl_8053D000
lbl_8053CFEC:
/* 8053CFEC  38 60 00 04 */	li r3, 4
/* 8053CFF0  38 80 00 01 */	li r4, 1
/* 8053CFF4  4B E5 B4 89 */	bl mDemo_Get_OrderValue
/* 8053CFF8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8053CFFC  3B E0 00 00 */	li r31, 0
lbl_8053D000:
/* 8053D000  28 00 00 0F */	cmplwi r0, 0xf
/* 8053D004  41 81 01 E0 */	bgt lbl_8053D1E4
/* 8053D008  3C 60 80 6A */	lis r3, lit_1320@ha /* 0x806A3804@ha */
/* 8053D00C  54 00 10 3A */	slwi r0, r0, 2
/* 8053D010  38 63 38 04 */	addi r3, r3, lit_1320@l /* 0x806A3804@l */
/* 8053D014  7C 03 00 2E */	lwzx r0, r3, r0
/* 8053D018  7C 09 03 A6 */	mtctr r0
/* 8053D01C  4E 80 04 20 */	bctr 
lbl_8053D020:
/* 8053D020  38 61 00 14 */	addi r3, r1, 0x14
/* 8053D024  38 80 00 0C */	li r4, 0xc
/* 8053D028  4B B2 00 41 */	bl bzero
/* 8053D02C  38 60 00 05 */	li r3, 5
/* 8053D030  38 80 00 00 */	li r4, 0
/* 8053D034  4B E5 B4 49 */	bl mDemo_Get_OrderValue
/* 8053D038  B0 61 00 14 */	sth r3, 0x14(r1)
/* 8053D03C  7F A3 EB 78 */	mr r3, r29
/* 8053D040  38 E1 00 14 */	addi r7, r1, 0x14
/* 8053D044  38 80 00 04 */	li r4, 4
/* 8053D048  38 A0 00 0B */	li r5, 0xb
/* 8053D04C  38 C0 00 00 */	li r6, 0
/* 8053D050  48 00 23 51 */	bl aNPC_set_request_act
/* 8053D054  2C 03 00 01 */	cmpwi r3, 1
/* 8053D058  40 82 01 8C */	bne lbl_8053D1E4
/* 8053D05C  7F E3 FB 78 */	mr r3, r31
/* 8053D060  4B FF FE D1 */	bl aNPC_clear_timing_demoCode
/* 8053D064  3B C0 00 00 */	li r30, 0
/* 8053D068  48 00 01 7C */	b lbl_8053D1E4
lbl_8053D06C:
/* 8053D06C  38 61 00 08 */	addi r3, r1, 8
/* 8053D070  38 80 00 0C */	li r4, 0xc
/* 8053D074  4B B1 FF F5 */	bl bzero
/* 8053D078  38 60 00 05 */	li r3, 5
/* 8053D07C  38 80 00 00 */	li r4, 0
/* 8053D080  4B E5 B3 FD */	bl mDemo_Get_OrderValue
/* 8053D084  B0 61 00 08 */	sth r3, 8(r1)
/* 8053D088  38 60 00 05 */	li r3, 5
/* 8053D08C  38 80 00 01 */	li r4, 1
/* 8053D090  4B E5 B3 ED */	bl mDemo_Get_OrderValue
/* 8053D094  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8053D098  38 60 00 05 */	li r3, 5
/* 8053D09C  38 80 00 02 */	li r4, 2
/* 8053D0A0  4B E5 B3 DD */	bl mDemo_Get_OrderValue
/* 8053D0A4  B0 61 00 0C */	sth r3, 0xc(r1)
/* 8053D0A8  7F A3 EB 78 */	mr r3, r29
/* 8053D0AC  38 E1 00 08 */	addi r7, r1, 8
/* 8053D0B0  38 80 00 04 */	li r4, 4
/* 8053D0B4  38 A0 00 0A */	li r5, 0xa
/* 8053D0B8  38 C0 00 00 */	li r6, 0
/* 8053D0BC  48 00 22 E5 */	bl aNPC_set_request_act
/* 8053D0C0  2C 03 00 01 */	cmpwi r3, 1
/* 8053D0C4  40 82 01 20 */	bne lbl_8053D1E4
/* 8053D0C8  7F E3 FB 78 */	mr r3, r31
/* 8053D0CC  4B FF FE 65 */	bl aNPC_clear_timing_demoCode
/* 8053D0D0  3B C0 00 00 */	li r30, 0
/* 8053D0D4  48 00 01 10 */	b lbl_8053D1E4
lbl_8053D0D8:
/* 8053D0D8  38 00 00 02 */	li r0, 2
/* 8053D0DC  7F E3 FB 78 */	mr r3, r31
/* 8053D0E0  98 1D 08 99 */	stb r0, 0x899(r29)
/* 8053D0E4  4B FF FE 4D */	bl aNPC_clear_timing_demoCode
/* 8053D0E8  48 00 00 FC */	b lbl_8053D1E4
lbl_8053D0EC:
/* 8053D0EC  38 00 00 03 */	li r0, 3
/* 8053D0F0  7F E3 FB 78 */	mr r3, r31
/* 8053D0F4  98 1D 08 99 */	stb r0, 0x899(r29)
/* 8053D0F8  4B FF FE 39 */	bl aNPC_clear_timing_demoCode
/* 8053D0FC  48 00 00 E8 */	b lbl_8053D1E4
lbl_8053D100:
/* 8053D100  3C 80 80 6A */	lis r4, data_806A2B78@ha /* 0x806A2B78@ha */
/* 8053D104  7F A3 EB 78 */	mr r3, r29
/* 8053D108  38 E4 2B 78 */	addi r7, r4, data_806A2B78@l /* 0x806A2B78@l */
/* 8053D10C  38 A0 00 0C */	li r5, 0xc
/* 8053D110  38 80 00 04 */	li r4, 4
/* 8053D114  38 C0 00 00 */	li r6, 0
/* 8053D118  48 00 22 89 */	bl aNPC_set_request_act
/* 8053D11C  2C 03 00 01 */	cmpwi r3, 1
/* 8053D120  40 82 00 C4 */	bne lbl_8053D1E4
/* 8053D124  7F E3 FB 78 */	mr r3, r31
/* 8053D128  4B FF FE 09 */	bl aNPC_clear_timing_demoCode
/* 8053D12C  3B C0 00 00 */	li r30, 0
/* 8053D130  48 00 00 B4 */	b lbl_8053D1E4
lbl_8053D134:
/* 8053D134  3C 80 80 6A */	lis r4, data_806A2B78@ha /* 0x806A2B78@ha */
/* 8053D138  7F A3 EB 78 */	mr r3, r29
/* 8053D13C  38 E4 2B 78 */	addi r7, r4, data_806A2B78@l /* 0x806A2B78@l */
/* 8053D140  38 A0 00 0D */	li r5, 0xd
/* 8053D144  38 80 00 04 */	li r4, 4
/* 8053D148  38 C0 00 00 */	li r6, 0
/* 8053D14C  48 00 22 55 */	bl aNPC_set_request_act
/* 8053D150  2C 03 00 01 */	cmpwi r3, 1
/* 8053D154  40 82 00 90 */	bne lbl_8053D1E4
/* 8053D158  7F E3 FB 78 */	mr r3, r31
/* 8053D15C  4B FF FD D5 */	bl aNPC_clear_timing_demoCode
/* 8053D160  3B C0 00 00 */	li r30, 0
/* 8053D164  48 00 00 80 */	b lbl_8053D1E4
lbl_8053D168:
/* 8053D168  3C 80 80 6A */	lis r4, data_806A2B78@ha /* 0x806A2B78@ha */
/* 8053D16C  7F A3 EB 78 */	mr r3, r29
/* 8053D170  38 E4 2B 78 */	addi r7, r4, data_806A2B78@l /* 0x806A2B78@l */
/* 8053D174  38 A0 00 0E */	li r5, 0xe
/* 8053D178  38 80 00 04 */	li r4, 4
/* 8053D17C  38 C0 00 00 */	li r6, 0
/* 8053D180  48 00 22 21 */	bl aNPC_set_request_act
/* 8053D184  2C 03 00 01 */	cmpwi r3, 1
/* 8053D188  40 82 00 5C */	bne lbl_8053D1E4
/* 8053D18C  7F E3 FB 78 */	mr r3, r31
/* 8053D190  4B FF FD A1 */	bl aNPC_clear_timing_demoCode
/* 8053D194  3B C0 00 00 */	li r30, 0
/* 8053D198  48 00 00 4C */	b lbl_8053D1E4
lbl_8053D19C:
/* 8053D19C  3C 80 80 6A */	lis r4, data_806A2B78@ha /* 0x806A2B78@ha */
/* 8053D1A0  7F A3 EB 78 */	mr r3, r29
/* 8053D1A4  38 E4 2B 78 */	addi r7, r4, data_806A2B78@l /* 0x806A2B78@l */
/* 8053D1A8  38 A0 00 0F */	li r5, 0xf
/* 8053D1AC  38 80 00 04 */	li r4, 4
/* 8053D1B0  38 C0 00 00 */	li r6, 0
/* 8053D1B4  48 00 21 ED */	bl aNPC_set_request_act
/* 8053D1B8  2C 03 00 01 */	cmpwi r3, 1
/* 8053D1BC  40 82 00 28 */	bne lbl_8053D1E4
/* 8053D1C0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8053D1C4  7F E3 FB 78 */	mr r3, r31
/* 8053D1C8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8053D1CC  3C A4 00 02 */	addis r5, r4, 2
/* 8053D1D0  80 85 61 3C */	lwz r4, 0x613c(r5)
/* 8053D1D4  A0 04 10 8A */	lhz r0, 0x108a(r4)
/* 8053D1D8  B0 05 66 68 */	sth r0, 0x6668(r5)
/* 8053D1DC  4B FF FD 55 */	bl aNPC_clear_timing_demoCode
/* 8053D1E0  3B C0 00 00 */	li r30, 0
lbl_8053D1E4:
/* 8053D1E4  7F C3 F3 78 */	mr r3, r30
/* 8053D1E8  39 61 00 30 */	addi r11, r1, 0x30
/* 8053D1EC  4B B5 DD 35 */	bl func_8009AF20
/* 8053D1F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8053D1F4  7C 08 03 A6 */	mtlr r0
/* 8053D1F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8053D1FC  4E 80 00 20 */	blr 
