lbl_803B7EF4:
/* 803B7EF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B7EF8  7C 08 02 A6 */	mflr r0
/* 803B7EFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B7F00  39 61 00 20 */	addi r11, r1, 0x20
/* 803B7F04  4B CE 2F C5 */	bl func_8009AEC8
/* 803B7F08  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B7F0C  3C A0 80 65 */	lis r5, data_80655C78@ha /* 0x80655C78@ha */
/* 803B7F10  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803B7F14  7C 7B 1B 78 */	mr r27, r3
/* 803B7F18  3C 64 00 02 */	addis r3, r4, 2
/* 803B7F1C  3B A5 5C 78 */	addi r29, r5, data_80655C78@l /* 0x80655C78@l */
/* 803B7F20  83 83 61 1C */	lwz r28, 0x611c(r3)
/* 803B7F24  4B FF FF 85 */	bl mEnv_GetNowTerm
/* 803B7F28  7C 7E 1B 78 */	mr r30, r3
/* 803B7F2C  3C A0 81 17 */	lis r5, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B7F30  38 7E 00 01 */	addi r3, r30, 1
/* 803B7F34  38 9D 00 00 */	addi r4, r29, 0
/* 803B7F38  3B E5 9B A0 */	addi r31, r5, data_81169BA0@l /* 0x81169BA0@l */
/* 803B7F3C  57 C0 10 3A */	slwi r0, r30, 2
/* 803B7F40  54 63 10 3A */	slwi r3, r3, 2
/* 803B7F44  AB 5F 00 0A */	lha r26, 0xa(r31)
/* 803B7F48  7C 64 18 2E */	lwzx r3, r4, r3
/* 803B7F4C  7F 85 E3 78 */	mr r5, r28
/* 803B7F50  7C 84 00 2E */	lwzx r4, r4, r0
/* 803B7F54  3B 80 00 01 */	li r28, 1
/* 803B7F58  48 00 38 8D */	bl get_percent
/* 803B7F5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B7F60  FC 00 08 90 */	fmr f0, f1
/* 803B7F64  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B7F68  3C 63 00 02 */	addis r3, r3, 2
/* 803B7F6C  88 03 60 02 */	lbz r0, 0x6002(r3)
/* 803B7F70  2C 00 00 03 */	cmpwi r0, 3
/* 803B7F74  41 82 00 60 */	beq lbl_803B7FD4
/* 803B7F78  40 80 00 94 */	bge lbl_803B800C
/* 803B7F7C  2C 00 00 02 */	cmpwi r0, 2
/* 803B7F80  40 80 00 08 */	bge lbl_803B7F88
/* 803B7F84  48 00 00 88 */	b lbl_803B800C
lbl_803B7F88:
/* 803B7F88  38 7E 00 01 */	addi r3, r30, 1
/* 803B7F8C  57 46 10 3A */	slwi r6, r26, 2
/* 803B7F90  54 60 E8 04 */	slwi r0, r3, 0x1d
/* 803B7F94  38 BD 06 74 */	addi r5, r29, 0x674
/* 803B7F98  54 64 0F FE */	srwi r4, r3, 0x1f
/* 803B7F9C  7C C5 30 2E */	lwzx r6, r5, r6
/* 803B7FA0  7C 04 00 50 */	subf r0, r4, r0
/* 803B7FA4  7F 68 DB 78 */	mr r8, r27
/* 803B7FA8  54 00 18 3E */	rotlwi r0, r0, 3
/* 803B7FAC  38 7B 00 94 */	addi r3, r27, 0x94
/* 803B7FB0  7C 00 22 14 */	add r0, r0, r4
/* 803B7FB4  1C 00 00 26 */	mulli r0, r0, 0x26
/* 803B7FB8  7C A6 02 14 */	add r5, r6, r0
/* 803B7FBC  1C 1E 00 26 */	mulli r0, r30, 0x26
/* 803B7FC0  7C A7 2B 78 */	mr r7, r5
/* 803B7FC4  7C 86 02 14 */	add r4, r6, r0
/* 803B7FC8  7C 86 23 78 */	mr r6, r4
/* 803B7FCC  4B FF FD 69 */	bl mEnv_CalcSetLight
/* 803B7FD0  48 00 03 98 */	b lbl_803B8368
lbl_803B7FD4:
/* 803B7FD4  3C 60 80 64 */	lis r3, lit_936@ha /* 0x8064249C@ha */
/* 803B7FD8  38 9D 04 E4 */	addi r4, r29, 0x4e4
/* 803B7FDC  C0 23 24 9C */	lfs f1, lit_936@l(r3)  /* 0x8064249C@l */
/* 803B7FE0  7F 68 DB 78 */	mr r8, r27
/* 803B7FE4  7C 85 23 78 */	mr r5, r4
/* 803B7FE8  7C 86 23 78 */	mr r6, r4
/* 803B7FEC  7C 87 23 78 */	mr r7, r4
/* 803B7FF0  38 7B 00 94 */	addi r3, r27, 0x94
/* 803B7FF4  4B FF FD 41 */	bl mEnv_CalcSetLight
/* 803B7FF8  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B7FFC  38 00 00 C8 */	li r0, 0xc8
/* 803B8000  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8004  B0 03 00 9A */	sth r0, 0x9a(r3)
/* 803B8008  48 00 03 60 */	b lbl_803B8368
lbl_803B800C:
/* 803B800C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B8010  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B8014  80 63 00 14 */	lwz r3, 0x14(r3)
/* 803B8018  2C 03 00 17 */	cmpwi r3, 0x17
/* 803B801C  41 82 00 18 */	beq lbl_803B8034
/* 803B8020  38 03 FF E8 */	addi r0, r3, -24
/* 803B8024  28 00 00 01 */	cmplwi r0, 1
/* 803B8028  40 81 00 0C */	ble lbl_803B8034
/* 803B802C  2C 03 00 1D */	cmpwi r3, 0x1d
/* 803B8030  40 82 00 3C */	bne lbl_803B806C
lbl_803B8034:
/* 803B8034  3C 60 80 64 */	lis r3, lit_936@ha /* 0x8064249C@ha */
/* 803B8038  38 9D 05 0C */	addi r4, r29, 0x50c
/* 803B803C  C0 23 24 9C */	lfs f1, lit_936@l(r3)  /* 0x8064249C@l */
/* 803B8040  7F 68 DB 78 */	mr r8, r27
/* 803B8044  7C 85 23 78 */	mr r5, r4
/* 803B8048  7C 86 23 78 */	mr r6, r4
/* 803B804C  7C 87 23 78 */	mr r7, r4
/* 803B8050  38 7B 00 94 */	addi r3, r27, 0x94
/* 803B8054  4B FF FC E1 */	bl mEnv_CalcSetLight
/* 803B8058  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B805C  38 00 00 96 */	li r0, 0x96
/* 803B8060  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8064  B0 03 00 9A */	sth r0, 0x9a(r3)
/* 803B8068  48 00 02 E4 */	b lbl_803B834C
lbl_803B806C:
/* 803B806C  2C 03 00 12 */	cmpwi r3, 0x12
/* 803B8070  40 82 00 3C */	bne lbl_803B80AC
/* 803B8074  3C 60 80 64 */	lis r3, lit_936@ha /* 0x8064249C@ha */
/* 803B8078  38 9D 05 34 */	addi r4, r29, 0x534
/* 803B807C  C0 23 24 9C */	lfs f1, lit_936@l(r3)  /* 0x8064249C@l */
/* 803B8080  7F 68 DB 78 */	mr r8, r27
/* 803B8084  7C 85 23 78 */	mr r5, r4
/* 803B8088  7C 86 23 78 */	mr r6, r4
/* 803B808C  7C 87 23 78 */	mr r7, r4
/* 803B8090  38 7B 00 94 */	addi r3, r27, 0x94
/* 803B8094  4B FF FC A1 */	bl mEnv_CalcSetLight
/* 803B8098  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B809C  38 00 00 96 */	li r0, 0x96
/* 803B80A0  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B80A4  B0 03 00 9A */	sth r0, 0x9a(r3)
/* 803B80A8  48 00 02 A4 */	b lbl_803B834C
lbl_803B80AC:
/* 803B80AC  2C 03 00 1F */	cmpwi r3, 0x1f
/* 803B80B0  40 82 00 3C */	bne lbl_803B80EC
/* 803B80B4  3C 60 80 64 */	lis r3, lit_936@ha /* 0x8064249C@ha */
/* 803B80B8  38 9D 05 84 */	addi r4, r29, 0x584
/* 803B80BC  C0 23 24 9C */	lfs f1, lit_936@l(r3)  /* 0x8064249C@l */
/* 803B80C0  7F 68 DB 78 */	mr r8, r27
/* 803B80C4  7C 85 23 78 */	mr r5, r4
/* 803B80C8  7C 86 23 78 */	mr r6, r4
/* 803B80CC  7C 87 23 78 */	mr r7, r4
/* 803B80D0  38 7B 00 94 */	addi r3, r27, 0x94
/* 803B80D4  4B FF FC 61 */	bl mEnv_CalcSetLight
/* 803B80D8  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B80DC  38 00 00 96 */	li r0, 0x96
/* 803B80E0  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B80E4  B0 03 00 9A */	sth r0, 0x9a(r3)
/* 803B80E8  48 00 02 64 */	b lbl_803B834C
lbl_803B80EC:
/* 803B80EC  2C 03 00 0C */	cmpwi r3, 0xc
/* 803B80F0  40 82 00 3C */	bne lbl_803B812C
/* 803B80F4  3C 60 80 64 */	lis r3, lit_936@ha /* 0x8064249C@ha */
/* 803B80F8  38 9D 05 5C */	addi r4, r29, 0x55c
/* 803B80FC  C0 23 24 9C */	lfs f1, lit_936@l(r3)  /* 0x8064249C@l */
/* 803B8100  7F 68 DB 78 */	mr r8, r27
/* 803B8104  7C 85 23 78 */	mr r5, r4
/* 803B8108  7C 86 23 78 */	mr r6, r4
/* 803B810C  7C 87 23 78 */	mr r7, r4
/* 803B8110  38 7B 00 94 */	addi r3, r27, 0x94
/* 803B8114  4B FF FC 21 */	bl mEnv_CalcSetLight
/* 803B8118  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B811C  38 00 00 96 */	li r0, 0x96
/* 803B8120  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8124  B0 03 00 9A */	sth r0, 0x9a(r3)
/* 803B8128  48 00 02 24 */	b lbl_803B834C
lbl_803B812C:
/* 803B812C  2C 03 00 27 */	cmpwi r3, 0x27
/* 803B8130  40 82 00 3C */	bne lbl_803B816C
/* 803B8134  3C 60 80 64 */	lis r3, lit_936@ha /* 0x8064249C@ha */
/* 803B8138  38 9D 05 D4 */	addi r4, r29, 0x5d4
/* 803B813C  C0 23 24 9C */	lfs f1, lit_936@l(r3)  /* 0x8064249C@l */
/* 803B8140  7F 68 DB 78 */	mr r8, r27
/* 803B8144  7C 85 23 78 */	mr r5, r4
/* 803B8148  7C 86 23 78 */	mr r6, r4
/* 803B814C  7C 87 23 78 */	mr r7, r4
/* 803B8150  38 7B 00 94 */	addi r3, r27, 0x94
/* 803B8154  4B FF FB E1 */	bl mEnv_CalcSetLight
/* 803B8158  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B815C  38 00 00 96 */	li r0, 0x96
/* 803B8160  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8164  B0 03 00 9A */	sth r0, 0x9a(r3)
/* 803B8168  48 00 01 E4 */	b lbl_803B834C
lbl_803B816C:
/* 803B816C  2C 03 00 25 */	cmpwi r3, 0x25
/* 803B8170  40 82 00 3C */	bne lbl_803B81AC
/* 803B8174  3C 60 80 64 */	lis r3, lit_936@ha /* 0x8064249C@ha */
/* 803B8178  38 9D 05 AC */	addi r4, r29, 0x5ac
/* 803B817C  C0 23 24 9C */	lfs f1, lit_936@l(r3)  /* 0x8064249C@l */
/* 803B8180  7F 68 DB 78 */	mr r8, r27
/* 803B8184  7C 85 23 78 */	mr r5, r4
/* 803B8188  7C 86 23 78 */	mr r6, r4
/* 803B818C  7C 87 23 78 */	mr r7, r4
/* 803B8190  38 7B 00 94 */	addi r3, r27, 0x94
/* 803B8194  4B FF FB A1 */	bl mEnv_CalcSetLight
/* 803B8198  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B819C  38 00 00 96 */	li r0, 0x96
/* 803B81A0  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B81A4  B0 03 00 9A */	sth r0, 0x9a(r3)
/* 803B81A8  48 00 01 A4 */	b lbl_803B834C
lbl_803B81AC:
/* 803B81AC  2C 03 00 24 */	cmpwi r3, 0x24
/* 803B81B0  40 82 00 3C */	bne lbl_803B81EC
/* 803B81B4  3C 60 80 64 */	lis r3, lit_936@ha /* 0x8064249C@ha */
/* 803B81B8  38 9D 05 FC */	addi r4, r29, 0x5fc
/* 803B81BC  C0 23 24 9C */	lfs f1, lit_936@l(r3)  /* 0x8064249C@l */
/* 803B81C0  7F 68 DB 78 */	mr r8, r27
/* 803B81C4  7C 85 23 78 */	mr r5, r4
/* 803B81C8  7C 86 23 78 */	mr r6, r4
/* 803B81CC  7C 87 23 78 */	mr r7, r4
/* 803B81D0  38 7B 00 94 */	addi r3, r27, 0x94
/* 803B81D4  4B FF FB 61 */	bl mEnv_CalcSetLight
/* 803B81D8  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B81DC  38 00 00 96 */	li r0, 0x96
/* 803B81E0  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B81E4  B0 03 00 9A */	sth r0, 0x9a(r3)
/* 803B81E8  48 00 01 64 */	b lbl_803B834C
lbl_803B81EC:
/* 803B81EC  38 03 FF D6 */	addi r0, r3, -42
/* 803B81F0  28 00 00 02 */	cmplwi r0, 2
/* 803B81F4  40 81 00 0C */	ble lbl_803B8200
/* 803B81F8  2C 03 00 2D */	cmpwi r3, 0x2d
/* 803B81FC  40 82 00 3C */	bne lbl_803B8238
lbl_803B8200:
/* 803B8200  3C 60 80 64 */	lis r3, lit_936@ha /* 0x8064249C@ha */
/* 803B8204  38 9D 06 24 */	addi r4, r29, 0x624
/* 803B8208  C0 23 24 9C */	lfs f1, lit_936@l(r3)  /* 0x8064249C@l */
/* 803B820C  7F 68 DB 78 */	mr r8, r27
/* 803B8210  7C 85 23 78 */	mr r5, r4
/* 803B8214  7C 86 23 78 */	mr r6, r4
/* 803B8218  7C 87 23 78 */	mr r7, r4
/* 803B821C  38 7B 00 94 */	addi r3, r27, 0x94
/* 803B8220  4B FF FB 15 */	bl mEnv_CalcSetLight
/* 803B8224  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B8228  38 00 00 96 */	li r0, 0x96
/* 803B822C  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8230  B0 03 00 9A */	sth r0, 0x9a(r3)
/* 803B8234  48 00 01 18 */	b lbl_803B834C
lbl_803B8238:
/* 803B8238  2C 03 00 32 */	cmpwi r3, 0x32
/* 803B823C  40 82 00 3C */	bne lbl_803B8278
/* 803B8240  3C 60 80 64 */	lis r3, lit_936@ha /* 0x8064249C@ha */
/* 803B8244  38 9D 06 4C */	addi r4, r29, 0x64c
/* 803B8248  C0 23 24 9C */	lfs f1, lit_936@l(r3)  /* 0x8064249C@l */
/* 803B824C  7F 68 DB 78 */	mr r8, r27
/* 803B8250  7C 85 23 78 */	mr r5, r4
/* 803B8254  7C 86 23 78 */	mr r6, r4
/* 803B8258  7C 87 23 78 */	mr r7, r4
/* 803B825C  38 7B 00 94 */	addi r3, r27, 0x94
/* 803B8260  4B FF FA D5 */	bl mEnv_CalcSetLight
/* 803B8264  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B8268  38 00 00 73 */	li r0, 0x73
/* 803B826C  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8270  B0 03 00 9A */	sth r0, 0x9a(r3)
/* 803B8274  48 00 00 D8 */	b lbl_803B834C
lbl_803B8278:
/* 803B8278  2C 03 00 26 */	cmpwi r3, 0x26
/* 803B827C  40 82 00 6C */	bne lbl_803B82E8
/* 803B8280  38 7E 00 01 */	addi r3, r30, 1
/* 803B8284  3C 80 81 17 */	lis r4, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B8288  54 60 E8 04 */	slwi r0, r3, 0x1d
/* 803B828C  A8 BF 00 0A */	lha r5, 0xa(r31)
/* 803B8290  54 63 0F FE */	srwi r3, r3, 0x1f
/* 803B8294  38 84 9B A0 */	addi r4, r4, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8298  7C 03 00 50 */	subf r0, r3, r0
/* 803B829C  A8 84 00 0C */	lha r4, 0xc(r4)
/* 803B82A0  54 00 18 3E */	rotlwi r0, r0, 3
/* 803B82A4  54 A6 10 3A */	slwi r6, r5, 2
/* 803B82A8  7C 00 1A 14 */	add r0, r0, r3
/* 803B82AC  38 BD 06 84 */	addi r5, r29, 0x684
/* 803B82B0  54 83 10 3A */	slwi r3, r4, 2
/* 803B82B4  FC 20 00 90 */	fmr f1, f0
/* 803B82B8  1C 00 00 26 */	mulli r0, r0, 0x26
/* 803B82BC  7D 25 30 2E */	lwzx r9, r5, r6
/* 803B82C0  7C 85 18 2E */	lwzx r4, r5, r3
/* 803B82C4  7F 68 DB 78 */	mr r8, r27
/* 803B82C8  38 7B 00 94 */	addi r3, r27, 0x94
/* 803B82CC  1C DE 00 26 */	mulli r6, r30, 0x26
/* 803B82D0  7C A4 02 14 */	add r5, r4, r0
/* 803B82D4  7C E9 02 14 */	add r7, r9, r0
/* 803B82D8  7C 84 32 14 */	add r4, r4, r6
/* 803B82DC  7C C9 32 14 */	add r6, r9, r6
/* 803B82E0  4B FF FA 55 */	bl mEnv_CalcSetLight
/* 803B82E4  48 00 00 68 */	b lbl_803B834C
lbl_803B82E8:
/* 803B82E8  38 7E 00 01 */	addi r3, r30, 1
/* 803B82EC  3C 80 81 17 */	lis r4, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B82F0  54 60 E8 04 */	slwi r0, r3, 0x1d
/* 803B82F4  A8 BF 00 0A */	lha r5, 0xa(r31)
/* 803B82F8  54 63 0F FE */	srwi r3, r3, 0x1f
/* 803B82FC  38 84 9B A0 */	addi r4, r4, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8300  7C 03 00 50 */	subf r0, r3, r0
/* 803B8304  A8 84 00 0C */	lha r4, 0xc(r4)
/* 803B8308  54 00 18 3E */	rotlwi r0, r0, 3
/* 803B830C  54 A6 10 3A */	slwi r6, r5, 2
/* 803B8310  7C 00 1A 14 */	add r0, r0, r3
/* 803B8314  38 BD 06 74 */	addi r5, r29, 0x674
/* 803B8318  54 83 10 3A */	slwi r3, r4, 2
/* 803B831C  FC 20 00 90 */	fmr f1, f0
/* 803B8320  1C 00 00 26 */	mulli r0, r0, 0x26
/* 803B8324  7D 25 30 2E */	lwzx r9, r5, r6
/* 803B8328  7C 85 18 2E */	lwzx r4, r5, r3
/* 803B832C  7F 68 DB 78 */	mr r8, r27
/* 803B8330  38 7B 00 94 */	addi r3, r27, 0x94
/* 803B8334  1C DE 00 26 */	mulli r6, r30, 0x26
/* 803B8338  7C A4 02 14 */	add r5, r4, r0
/* 803B833C  7C E9 02 14 */	add r7, r9, r0
/* 803B8340  7C 84 32 14 */	add r4, r4, r6
/* 803B8344  7C C9 32 14 */	add r6, r9, r6
/* 803B8348  4B FF F9 ED */	bl mEnv_CalcSetLight
lbl_803B834C:
/* 803B834C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B8350  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B8354  3C 63 00 02 */	addis r3, r3, 2
/* 803B8358  88 03 60 01 */	lbz r0, 0x6001(r3)
/* 803B835C  28 00 00 00 */	cmplwi r0, 0
/* 803B8360  40 82 00 08 */	bne lbl_803B8368
/* 803B8364  3B 80 00 00 */	li r28, 0
lbl_803B8368:
/* 803B8368  2C 1C 00 01 */	cmpwi r28, 1
/* 803B836C  40 82 00 24 */	bne lbl_803B8390
/* 803B8370  38 80 00 00 */	li r4, 0
/* 803B8374  38 60 07 E4 */	li r3, 0x7e4
/* 803B8378  98 9B 00 A5 */	stb r4, 0xa5(r27)
/* 803B837C  38 00 03 E8 */	li r0, 0x3e8
/* 803B8380  98 9B 00 A4 */	stb r4, 0xa4(r27)
/* 803B8384  98 9B 00 A3 */	stb r4, 0xa3(r27)
/* 803B8388  B0 7B 00 A6 */	sth r3, 0xa6(r27)
/* 803B838C  B0 1B 00 A8 */	sth r0, 0xa8(r27)
lbl_803B8390:
/* 803B8390  39 61 00 20 */	addi r11, r1, 0x20
/* 803B8394  4B CE 2B 81 */	bl func_8009AF14
/* 803B8398  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B839C  7C 08 03 A6 */	mtlr r0
/* 803B83A0  38 21 00 20 */	addi r1, r1, 0x20
/* 803B83A4  4E 80 00 20 */	blr 
