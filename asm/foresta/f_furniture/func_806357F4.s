lbl_806357F4:
/* 806357F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806357F8  7C 08 02 A6 */	mflr r0
/* 806357FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80635800  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80635804  93 C1 00 08 */	stw r30, 8(r1)
/* 80635808  A8 03 08 2A */	lha r0, 0x82a(r3)
/* 8063580C  83 E5 00 00 */	lwz r31, 0(r5)
/* 80635810  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80635814  7C 00 07 35 */	extsh. r0, r0
/* 80635818  40 82 00 4C */	bne lbl_80635864
/* 8063581C  81 3F 02 E0 */	lwz r9, 0x2e0(r31)
/* 80635820  3C E0 DB 06 */	lis r7, 0xDB06 /* 0xDB060020@ha */
/* 80635824  3C 80 80 FF */	lis r4, int_sum_bdcake01_a_candol2_TA_tex_txt@ha /* 0x80FEB6E0@ha */
/* 80635828  3C 60 80 FF */	lis r3, int_sum_bdcake01_b_candol1_TA_tex_txt@ha /* 0x80FEB720@ha */
/* 8063582C  38 09 00 08 */	addi r0, r9, 8
/* 80635830  39 07 00 20 */	addi r8, r7, 0x0020 /* 0xDB060020@l */
/* 80635834  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 80635838  38 C4 B6 E0 */	addi r6, r4, int_sum_bdcake01_a_candol2_TA_tex_txt@l /* 0x80FEB6E0@l */
/* 8063583C  38 87 00 24 */	addi r4, r7, 0x24
/* 80635840  38 03 B7 20 */	addi r0, r3, int_sum_bdcake01_b_candol1_TA_tex_txt@l /* 0x80FEB720@l */
/* 80635844  91 09 00 00 */	stw r8, 0(r9)
/* 80635848  90 C9 00 04 */	stw r6, 4(r9)
/* 8063584C  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 80635850  38 66 00 08 */	addi r3, r6, 8
/* 80635854  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80635858  90 86 00 00 */	stw r4, 0(r6)
/* 8063585C  90 06 00 04 */	stw r0, 4(r6)
/* 80635860  48 00 00 48 */	b lbl_806358A8
lbl_80635864:
/* 80635864  81 3F 02 E0 */	lwz r9, 0x2e0(r31)
/* 80635868  3C E0 DB 06 */	lis r7, 0xDB06 /* 0xDB060020@ha */
/* 8063586C  3C 80 80 FF */	lis r4, int_sum_bdcake01_a_candol1_TA_tex_txt@ha /* 0x80FEB6A0@ha */
/* 80635870  3C 60 80 FF */	lis r3, int_sum_bdcake01_b_candol2_TA_tex_txt@ha /* 0x80FEB760@ha */
/* 80635874  38 09 00 08 */	addi r0, r9, 8
/* 80635878  39 07 00 20 */	addi r8, r7, 0x0020 /* 0xDB060020@l */
/* 8063587C  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 80635880  38 C4 B6 A0 */	addi r6, r4, int_sum_bdcake01_a_candol1_TA_tex_txt@l /* 0x80FEB6A0@l */
/* 80635884  38 87 00 24 */	addi r4, r7, 0x24
/* 80635888  38 03 B7 60 */	addi r0, r3, int_sum_bdcake01_b_candol2_TA_tex_txt@l /* 0x80FEB760@l */
/* 8063588C  91 09 00 00 */	stw r8, 0(r9)
/* 80635890  90 C9 00 04 */	stw r6, 4(r9)
/* 80635894  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 80635898  38 66 00 08 */	addi r3, r6, 8
/* 8063589C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 806358A0  90 86 00 00 */	stw r4, 0(r6)
/* 806358A4  90 06 00 04 */	stw r0, 4(r6)
lbl_806358A8:
/* 806358A8  83 DF 02 E0 */	lwz r30, 0x2e0(r31)
/* 806358AC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 806358B0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 806358B4  38 7E 00 08 */	addi r3, r30, 8
/* 806358B8  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 806358BC  90 1E 00 00 */	stw r0, 0(r30)
/* 806358C0  80 65 00 00 */	lwz r3, 0(r5)
/* 806358C4  4B DD 7B 11 */	bl _Matrix_to_Mtx_new
/* 806358C8  90 7E 00 04 */	stw r3, 4(r30)
/* 806358CC  3C A0 80 FF */	lis r5, int_sum_bdcake01_on_model@ha /* 0x80FEBCE0@ha */
/* 806358D0  3C 80 80 FF */	lis r4, int_sum_bdcake01_off1_model@ha /* 0x80FEBDF0@ha */
/* 806358D4  3C 60 80 FF */	lis r3, int_sum_bdcake01_off_model@ha /* 0x80FEBE50@ha */
/* 806358D8  81 1F 02 E0 */	lwz r8, 0x2e0(r31)
/* 806358DC  3C C0 DE 00 */	lis r6, 0xde00
/* 806358E0  38 A5 BC E0 */	addi r5, r5, int_sum_bdcake01_on_model@l /* 0x80FEBCE0@l */
/* 806358E4  38 84 BD F0 */	addi r4, r4, int_sum_bdcake01_off1_model@l /* 0x80FEBDF0@l */
/* 806358E8  38 E8 00 08 */	addi r7, r8, 8
/* 806358EC  38 03 BE 50 */	addi r0, r3, int_sum_bdcake01_off_model@l /* 0x80FEBE50@l */
/* 806358F0  90 FF 02 E0 */	stw r7, 0x2e0(r31)
/* 806358F4  90 C8 00 00 */	stw r6, 0(r8)
/* 806358F8  90 A8 00 04 */	stw r5, 4(r8)
/* 806358FC  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80635900  38 65 00 08 */	addi r3, r5, 8
/* 80635904  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80635908  90 C5 00 00 */	stw r6, 0(r5)
/* 8063590C  90 85 00 04 */	stw r4, 4(r5)
/* 80635910  80 9F 02 E0 */	lwz r4, 0x2e0(r31)
/* 80635914  38 64 00 08 */	addi r3, r4, 8
/* 80635918  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8063591C  90 C4 00 00 */	stw r6, 0(r4)
/* 80635920  90 04 00 04 */	stw r0, 4(r4)
/* 80635924  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80635928  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063592C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80635930  7C 08 03 A6 */	mtlr r0
/* 80635934  38 21 00 10 */	addi r1, r1, 0x10
/* 80635938  4E 80 00 20 */	blr 
