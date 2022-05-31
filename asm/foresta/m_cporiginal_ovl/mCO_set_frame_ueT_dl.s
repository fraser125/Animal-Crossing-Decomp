lbl_805CDF54:
/* 805CDF54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CDF58  7C 08 02 A6 */	mflr r0
/* 805CDF5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CDF60  39 61 00 20 */	addi r11, r1, 0x20
/* 805CDF64  4B AC CF 6D */	bl func_8009AED0
/* 805CDF68  83 E4 00 00 */	lwz r31, 0(r4)
/* 805CDF6C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CDF70  3C 80 80 6D */	lis r4, data_806CB808@ha /* 0x806CB808@ha */
/* 805CDF74  7C BD 2B 78 */	mr r29, r5
/* 805CDF78  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 805CDF7C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CDF80  7F E3 FB 78 */	mr r3, r31
/* 805CDF84  3B 84 B8 08 */	addi r28, r4, data_806CB808@l /* 0x806CB808@l */
/* 805CDF88  90 1E 00 00 */	stw r0, 0(r30)
/* 805CDF8C  4B E3 F4 49 */	bl _Matrix_to_Mtx_new
/* 805CDF90  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805CDF94  90 7E 00 04 */	stw r3, 4(r30)
/* 805CDF98  1C BD 00 03 */	mulli r5, r29, 3
/* 805CDF9C  38 DC 00 74 */	addi r6, r28, 0x74
/* 805CDFA0  38 84 00 FF */	addi r4, r4, 0x00FF /* 0xFA0000FF@l */
/* 805CDFA4  90 9E 00 08 */	stw r4, 8(r30)
/* 805CDFA8  3C E0 80 A4 */	lis r7, sav_win1_ueT_model@ha /* 0x80A44410@ha */
/* 805CDFAC  7C 66 2A 14 */	add r3, r6, r5
/* 805CDFB0  88 03 00 01 */	lbz r0, 1(r3)
/* 805CDFB4  3B BC 00 8C */	addi r29, r28, 0x8c
/* 805CDFB8  7D 66 28 AE */	lbzx r11, r6, r5
/* 805CDFBC  3C C0 80 A4 */	lis r6, sav_win1_nameT_model2@ha /* 0x80A44568@ha */
/* 805CDFC0  54 0A 82 1E */	rlwinm r10, r0, 0x10, 8, 0xf
/* 805CDFC4  89 83 00 02 */	lbz r12, 2(r3)
/* 805CDFC8  51 6A C0 0E */	rlwimi r10, r11, 0x18, 0, 7
/* 805CDFCC  39 67 44 10 */	addi r11, r7, sav_win1_ueT_model@l /* 0x80A44410@l */
/* 805CDFD0  51 8A 44 2E */	rlwimi r10, r12, 8, 0x10, 0x17
/* 805CDFD4  3C 60 FB 00 */	lis r3, 0xfb00
/* 805CDFD8  61 47 00 FF */	ori r7, r10, 0xff
/* 805CDFDC  39 3C 00 A4 */	addi r9, r28, 0xa4
/* 805CDFE0  90 FE 00 0C */	stw r7, 0xc(r30)
/* 805CDFE4  39 1C 00 00 */	addi r8, r28, 0
/* 805CDFE8  7F 9D 2A 14 */	add r28, r29, r5
/* 805CDFEC  3C 00 DE 00 */	lis r0, 0xde00
/* 805CDFF0  90 7E 00 10 */	stw r3, 0x10(r30)
/* 805CDFF4  7D 49 2A 14 */	add r10, r9, r5
/* 805CDFF8  7C E8 2A 14 */	add r7, r8, r5
/* 805CDFFC  38 C6 45 68 */	addi r6, r6, sav_win1_nameT_model2@l /* 0x80A44568@l */
/* 805CE000  89 9C 00 01 */	lbz r12, 1(r28)
/* 805CE004  7F BD 28 AE */	lbzx r29, r29, r5
/* 805CE008  55 8C 82 1E */	rlwinm r12, r12, 0x10, 8, 0xf
/* 805CE00C  8B 9C 00 02 */	lbz r28, 2(r28)
/* 805CE010  53 AC C0 0E */	rlwimi r12, r29, 0x18, 0, 7
/* 805CE014  53 8C 44 2E */	rlwimi r12, r28, 8, 0x10, 0x17
/* 805CE018  61 8C 00 FF */	ori r12, r12, 0xff
/* 805CE01C  91 9E 00 14 */	stw r12, 0x14(r30)
/* 805CE020  90 1E 00 18 */	stw r0, 0x18(r30)
/* 805CE024  91 7E 00 1C */	stw r11, 0x1c(r30)
/* 805CE028  39 61 00 20 */	addi r11, r1, 0x20
/* 805CE02C  90 9E 00 20 */	stw r4, 0x20(r30)
/* 805CE030  88 8A 00 01 */	lbz r4, 1(r10)
/* 805CE034  7D 29 28 AE */	lbzx r9, r9, r5
/* 805CE038  54 84 82 1E */	rlwinm r4, r4, 0x10, 8, 0xf
/* 805CE03C  89 4A 00 02 */	lbz r10, 2(r10)
/* 805CE040  51 24 C0 0E */	rlwimi r4, r9, 0x18, 0, 7
/* 805CE044  51 44 44 2E */	rlwimi r4, r10, 8, 0x10, 0x17
/* 805CE048  60 84 00 FF */	ori r4, r4, 0xff
/* 805CE04C  90 9E 00 24 */	stw r4, 0x24(r30)
/* 805CE050  90 7E 00 28 */	stw r3, 0x28(r30)
/* 805CE054  88 67 00 01 */	lbz r3, 1(r7)
/* 805CE058  7C 88 28 AE */	lbzx r4, r8, r5
/* 805CE05C  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 805CE060  88 A7 00 02 */	lbz r5, 2(r7)
/* 805CE064  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 805CE068  50 A3 44 2E */	rlwimi r3, r5, 8, 0x10, 0x17
/* 805CE06C  60 63 00 FF */	ori r3, r3, 0xff
/* 805CE070  90 7E 00 2C */	stw r3, 0x2c(r30)
/* 805CE074  3B DE 00 30 */	addi r30, r30, 0x30
/* 805CE078  7F C3 F3 78 */	mr r3, r30
/* 805CE07C  90 1E 00 00 */	stw r0, 0(r30)
/* 805CE080  3B DE 00 08 */	addi r30, r30, 8
/* 805CE084  90 C3 00 04 */	stw r6, 4(r3)
/* 805CE088  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 805CE08C  4B AC CE 91 */	bl func_8009AF1C
/* 805CE090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CE094  7C 08 03 A6 */	mtlr r0
/* 805CE098  38 21 00 20 */	addi r1, r1, 0x20
/* 805CE09C  4E 80 00 20 */	blr 
