lbl_803965E0:
/* 803965E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803965E4  7C 08 02 A6 */	mflr r0
/* 803965E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803965EC  39 61 00 20 */	addi r11, r1, 0x20
/* 803965F0  4B D0 48 E5 */	bl func_8009AED4
/* 803965F4  38 60 00 74 */	li r3, 0x74
/* 803965F8  38 80 00 10 */	li r4, 0x10
/* 803965FC  4B FF FF 01 */	bl func_803964FC
/* 80396600  38 60 00 75 */	li r3, 0x75
/* 80396604  38 80 00 11 */	li r4, 0x11
/* 80396608  4B FF FE F5 */	bl func_803964FC
/* 8039660C  38 60 00 8B */	li r3, 0x8b
/* 80396610  38 80 00 27 */	li r4, 0x27
/* 80396614  4B FF FE E9 */	bl func_803964FC
/* 80396618  38 60 00 8C */	li r3, 0x8c
/* 8039661C  38 80 00 28 */	li r4, 0x28
/* 80396620  4B FF FE DD */	bl func_803964FC
/* 80396624  38 60 00 8D */	li r3, 0x8d
/* 80396628  38 80 00 29 */	li r4, 0x29
/* 8039662C  4B FF FE D1 */	bl func_803964FC
/* 80396630  38 60 00 8E */	li r3, 0x8e
/* 80396634  38 80 00 2A */	li r4, 0x2a
/* 80396638  4B FF FE C5 */	bl func_803964FC
/* 8039663C  38 60 00 8F */	li r3, 0x8f
/* 80396640  38 80 00 2B */	li r4, 0x2b
/* 80396644  4B FF FE B9 */	bl func_803964FC
/* 80396648  38 60 00 90 */	li r3, 0x90
/* 8039664C  38 80 00 2C */	li r4, 0x2c
/* 80396650  4B FF FE AD */	bl func_803964FC
/* 80396654  38 60 00 91 */	li r3, 0x91
/* 80396658  38 80 00 2D */	li r4, 0x2d
/* 8039665C  4B FF FE A1 */	bl func_803964FC
/* 80396660  38 60 00 92 */	li r3, 0x92
/* 80396664  38 80 00 2E */	li r4, 0x2e
/* 80396668  4B FF FE 95 */	bl func_803964FC
/* 8039666C  38 60 00 93 */	li r3, 0x93
/* 80396670  38 80 00 2F */	li r4, 0x2f
/* 80396674  4B FF FE 89 */	bl func_803964FC
/* 80396678  38 60 00 0A */	li r3, 0xa
/* 8039667C  38 80 00 2E */	li r4, 0x2e
/* 80396680  4B FF FE 7D */	bl func_803964FC
/* 80396684  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80396688  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8039668C  80 63 00 00 */	lwz r3, 0(r3)
/* 80396690  A8 03 10 74 */	lha r0, 0x1074(r3)
/* 80396694  2C 00 00 0F */	cmpwi r0, 0xf
/* 80396698  41 82 02 C4 */	beq lbl_8039695C
/* 8039669C  40 80 00 4C */	bge lbl_803966E8
/* 803966A0  2C 00 00 05 */	cmpwi r0, 5
/* 803966A4  41 82 05 BC */	beq lbl_80396C60
/* 803966A8  40 80 00 28 */	bge lbl_803966D0
/* 803966AC  2C 00 00 02 */	cmpwi r0, 2
/* 803966B0  41 82 01 20 */	beq lbl_803967D0
/* 803966B4  40 80 00 10 */	bge lbl_803966C4
/* 803966B8  2C 00 00 01 */	cmpwi r0, 1
/* 803966BC  40 80 00 68 */	bge lbl_80396724
/* 803966C0  48 00 05 A0 */	b lbl_80396C60
lbl_803966C4:
/* 803966C4  2C 00 00 04 */	cmpwi r0, 4
/* 803966C8  40 80 01 B4 */	bge lbl_8039687C
/* 803966CC  48 00 01 40 */	b lbl_8039680C
lbl_803966D0:
/* 803966D0  2C 00 00 08 */	cmpwi r0, 8
/* 803966D4  41 82 02 5C */	beq lbl_80396930
/* 803966D8  40 80 05 88 */	bge lbl_80396C60
/* 803966DC  2C 00 00 07 */	cmpwi r0, 7
/* 803966E0  40 80 05 80 */	bge lbl_80396C60
/* 803966E4  48 00 02 1C */	b lbl_80396900
lbl_803966E8:
/* 803966E8  2C 00 00 27 */	cmpwi r0, 0x27
/* 803966EC  41 82 04 50 */	beq lbl_80396B3C
/* 803966F0  40 80 00 1C */	bge lbl_8039670C
/* 803966F4  2C 00 00 19 */	cmpwi r0, 0x19
/* 803966F8  41 82 02 D4 */	beq lbl_803969CC
/* 803966FC  40 80 05 64 */	bge lbl_80396C60
/* 80396700  2C 00 00 14 */	cmpwi r0, 0x14
/* 80396704  41 82 02 A4 */	beq lbl_803969A8
/* 80396708  48 00 05 58 */	b lbl_80396C60
lbl_8039670C:
/* 8039670C  2C 00 02 9A */	cmpwi r0, 0x29a
/* 80396710  41 82 04 F8 */	beq lbl_80396C08
/* 80396714  40 80 05 4C */	bge lbl_80396C60
/* 80396718  2C 00 02 58 */	cmpwi r0, 0x258
/* 8039671C  41 82 04 C4 */	beq lbl_80396BE0
/* 80396720  48 00 05 40 */	b lbl_80396C60
lbl_80396724:
/* 80396724  38 60 00 01 */	li r3, 1
/* 80396728  48 00 0B 7D */	bl hreg_init_check
/* 8039672C  2C 03 00 00 */	cmpwi r3, 0
/* 80396730  41 82 00 18 */	beq lbl_80396748
/* 80396734  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80396738  38 00 FF FF */	li r0, -1
/* 8039673C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80396740  80 63 00 00 */	lwz r3, 0(r3)
/* 80396744  B0 03 10 92 */	sth r0, 0x1092(r3)
lbl_80396748:
/* 80396748  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8039674C  3B C3 61 38 */	addi r30, r3, debug_mode@l /* 0x81166138@l */
/* 80396750  80 9E 00 00 */	lwz r4, 0(r30)
/* 80396754  A8 64 10 76 */	lha r3, 0x1076(r4)
/* 80396758  A8 04 10 92 */	lha r0, 0x1092(r4)
/* 8039675C  7C 03 00 00 */	cmpw r3, r0
/* 80396760  41 82 00 40 */	beq lbl_803967A0
/* 80396764  B0 64 10 92 */	sth r3, 0x1092(r4)
/* 80396768  3B A0 00 00 */	li r29, 0
/* 8039676C  3B E0 00 00 */	li r31, 0
lbl_80396770:
/* 80396770  80 7E 00 00 */	lwz r3, 0(r30)
/* 80396774  A8 03 10 76 */	lha r0, 0x1076(r3)
/* 80396778  7C 60 EA 14 */	add r3, r0, r29
/* 8039677C  4B CC 25 99 */	bl emu64_get_aflags
/* 80396780  3B BD 00 01 */	addi r29, r29, 1
/* 80396784  80 9E 00 00 */	lwz r4, 0(r30)
/* 80396788  38 1F 10 78 */	addi r0, r31, 0x1078
/* 8039678C  3B FF 00 02 */	addi r31, r31, 2
/* 80396790  2C 1D 00 0C */	cmpwi r29, 0xc
/* 80396794  7C 64 03 2E */	sthx r3, r4, r0
/* 80396798  41 80 FF D8 */	blt lbl_80396770
/* 8039679C  48 00 00 34 */	b lbl_803967D0
lbl_803967A0:
/* 803967A0  3B A0 00 00 */	li r29, 0
/* 803967A4  3B E0 00 00 */	li r31, 0
lbl_803967A8:
/* 803967A8  80 9E 00 00 */	lwz r4, 0(r30)
/* 803967AC  38 1F 10 78 */	addi r0, r31, 0x1078
/* 803967B0  A8 64 10 76 */	lha r3, 0x1076(r4)
/* 803967B4  7C 84 02 AE */	lhax r4, r4, r0
/* 803967B8  7C 63 EA 14 */	add r3, r3, r29
/* 803967BC  4B CC 25 55 */	bl emu64_set_aflags
/* 803967C0  3B BD 00 01 */	addi r29, r29, 1
/* 803967C4  3B FF 00 02 */	addi r31, r31, 2
/* 803967C8  2C 1D 00 0C */	cmpwi r29, 0xc
/* 803967CC  41 80 FF DC */	blt lbl_803967A8
lbl_803967D0:
/* 803967D0  38 60 00 02 */	li r3, 2
/* 803967D4  48 00 0A D1 */	bl hreg_init_check
/* 803967D8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 803967DC  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 803967E0  80 63 00 00 */	lwz r3, 0(r3)
/* 803967E4  A8 03 10 76 */	lha r0, 0x1076(r3)
/* 803967E8  7C 00 07 35 */	extsh. r0, r0
/* 803967EC  40 80 00 20 */	bge lbl_8039680C
/* 803967F0  38 00 00 00 */	li r0, 0
/* 803967F4  B0 03 10 76 */	sth r0, 0x1076(r3)
/* 803967F8  4B CE 87 B1 */	bl OSCheckActiveThreads
/* 803967FC  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 80396800  38 84 61 38 */	addi r4, r4, debug_mode@l /* 0x81166138@l */
/* 80396804  80 84 00 00 */	lwz r4, 0(r4)
/* 80396808  B0 64 10 78 */	sth r3, 0x1078(r4)
lbl_8039680C:
/* 8039680C  38 60 00 03 */	li r3, 3
/* 80396810  48 00 0A 95 */	bl hreg_init_check
/* 80396814  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80396818  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8039681C  80 64 00 00 */	lwz r3, 0(r4)
/* 80396820  A8 03 10 76 */	lha r0, 0x1076(r3)
/* 80396824  7C 00 07 35 */	extsh. r0, r0
/* 80396828  40 80 00 54 */	bge lbl_8039687C
/* 8039682C  38 00 00 00 */	li r0, 0
/* 80396830  B0 03 10 76 */	sth r0, 0x1076(r3)
/* 80396834  80 64 00 00 */	lwz r3, 0(r4)
/* 80396838  A8 03 10 78 */	lha r0, 0x1078(r3)
/* 8039683C  2C 00 00 01 */	cmpwi r0, 1
/* 80396840  41 82 00 08 */	beq lbl_80396848
/* 80396844  48 00 00 38 */	b lbl_8039687C
lbl_80396848:
/* 80396848  3C 60 80 65 */	lis r3, data_80651228@ha /* 0x80651228@ha */
/* 8039684C  38 63 12 28 */	addi r3, r3, data_80651228@l /* 0x80651228@l */
/* 80396850  4C C6 31 82 */	crclr 6
/* 80396854  4B CC 3E FD */	bl OSReport
/* 80396858  4B CC B0 C5 */	bl JC_JFWSystem_getRootHeap
/* 8039685C  4B CC AA 61 */	bl JC_JKRHeap_dump
/* 80396860  4B CC B0 BD */	bl JC_JFWSystem_getRootHeap
/* 80396864  4B CC AA A9 */	bl JC_JKRHeap_getTotalFreeSize
/* 80396868  3C A0 80 65 */	lis r5, lit_424@ha /* 0x80651240@ha */
/* 8039686C  7C 64 1B 78 */	mr r4, r3
/* 80396870  38 65 12 40 */	addi r3, r5, lit_424@l /* 0x80651240@l */
/* 80396874  4C C6 31 82 */	crclr 6
/* 80396878  4B CC 3E D9 */	bl OSReport
lbl_8039687C:
/* 8039687C  38 60 00 04 */	li r3, 4
/* 80396880  48 00 0A 25 */	bl hreg_init_check
/* 80396884  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80396888  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8039688C  80 64 00 00 */	lwz r3, 0(r4)
/* 80396890  A8 03 10 76 */	lha r0, 0x1076(r3)
/* 80396894  7C 00 07 35 */	extsh. r0, r0
/* 80396898  40 80 00 68 */	bge lbl_80396900
/* 8039689C  38 00 00 00 */	li r0, 0
/* 803968A0  B0 03 10 76 */	sth r0, 0x1076(r3)
/* 803968A4  80 64 00 00 */	lwz r3, 0(r4)
/* 803968A8  A8 03 10 78 */	lha r0, 0x1078(r3)
/* 803968AC  2C 00 00 03 */	cmpwi r0, 3
/* 803968B0  41 82 00 3C */	beq lbl_803968EC
/* 803968B4  40 80 00 14 */	bge lbl_803968C8
/* 803968B8  2C 00 00 01 */	cmpwi r0, 1
/* 803968BC  41 82 00 18 */	beq lbl_803968D4
/* 803968C0  40 80 00 20 */	bge lbl_803968E0
/* 803968C4  48 00 00 3C */	b lbl_80396900
lbl_803968C8:
/* 803968C8  2C 00 00 05 */	cmpwi r0, 5
/* 803968CC  40 80 00 34 */	bge lbl_80396900
/* 803968D0  48 00 00 28 */	b lbl_803968F8
lbl_803968D4:
/* 803968D4  38 60 00 00 */	li r3, 0
/* 803968D8  4B C6 FE DD */	bl JW_SetProgressiveMode
/* 803968DC  48 00 00 24 */	b lbl_80396900
lbl_803968E0:
/* 803968E0  38 60 00 01 */	li r3, 1
/* 803968E4  4B C6 FE D1 */	bl JW_SetProgressiveMode
/* 803968E8  48 00 00 18 */	b lbl_80396900
lbl_803968EC:
/* 803968EC  38 60 00 00 */	li r3, 0
/* 803968F0  4B C6 FE F9 */	bl JW_SetLowResoMode
/* 803968F4  48 00 00 0C */	b lbl_80396900
lbl_803968F8:
/* 803968F8  38 60 00 01 */	li r3, 1
/* 803968FC  4B C6 FE ED */	bl JW_SetLowResoMode
lbl_80396900:
/* 80396900  38 60 00 06 */	li r3, 6
/* 80396904  48 00 09 A1 */	bl hreg_init_check
/* 80396908  2C 03 00 00 */	cmpwi r3, 0
/* 8039690C  41 82 03 54 */	beq lbl_80396C60
/* 80396910  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80396914  38 00 00 01 */	li r0, 1
/* 80396918  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8039691C  80 64 00 00 */	lwz r3, 0(r4)
/* 80396920  B0 03 10 76 */	sth r0, 0x1076(r3)
/* 80396924  80 64 00 00 */	lwz r3, 0(r4)
/* 80396928  B0 03 10 78 */	sth r0, 0x1078(r3)
/* 8039692C  48 00 03 34 */	b lbl_80396C60
lbl_80396930:
/* 80396930  38 60 00 08 */	li r3, 8
/* 80396934  48 00 09 71 */	bl hreg_init_check
/* 80396938  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8039693C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80396940  80 63 00 00 */	lwz r3, 0(r3)
/* 80396944  A8 03 10 76 */	lha r0, 0x1076(r3)
/* 80396948  7C 00 07 35 */	extsh. r0, r0
/* 8039694C  40 80 03 14 */	bge lbl_80396C60
/* 80396950  38 00 00 00 */	li r0, 0
/* 80396954  B0 03 10 76 */	sth r0, 0x1076(r3)
/* 80396958  48 00 03 08 */	b lbl_80396C60
lbl_8039695C:
/* 8039695C  38 60 00 0F */	li r3, 0xf
/* 80396960  48 00 09 45 */	bl hreg_init_check
/* 80396964  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80396968  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8039696C  80 63 00 00 */	lwz r3, 0(r3)
/* 80396970  A8 03 10 76 */	lha r0, 0x1076(r3)
/* 80396974  2C 00 00 01 */	cmpwi r0, 1
/* 80396978  40 82 00 14 */	bne lbl_8039698C
/* 8039697C  A8 03 10 32 */	lha r0, 0x1032(r3)
/* 80396980  60 00 00 08 */	ori r0, r0, 8
/* 80396984  B0 03 10 32 */	sth r0, 0x1032(r3)
/* 80396988  48 00 02 D8 */	b lbl_80396C60
lbl_8039698C:
/* 8039698C  7C 00 07 34 */	extsh r0, r0
/* 80396990  2C 00 00 02 */	cmpwi r0, 2
/* 80396994  40 82 02 CC */	bne lbl_80396C60
/* 80396998  A8 03 10 32 */	lha r0, 0x1032(r3)
/* 8039699C  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 803969A0  B0 03 10 32 */	sth r0, 0x1032(r3)
/* 803969A4  48 00 02 BC */	b lbl_80396C60
lbl_803969A8:
/* 803969A8  38 60 00 14 */	li r3, 0x14
/* 803969AC  48 00 08 F9 */	bl hreg_init_check
/* 803969B0  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 803969B4  3C 60 80 22 */	lis r3, data_80218638@ha /* 0x80218638@ha */
/* 803969B8  38 84 61 38 */	addi r4, r4, debug_mode@l /* 0x81166138@l */
/* 803969BC  80 84 00 00 */	lwz r4, 0(r4)
/* 803969C0  A8 04 10 78 */	lha r0, 0x1078(r4)
/* 803969C4  90 03 86 38 */	stw r0, data_80218638@l(r3)  /* 0x80218638@l */
/* 803969C8  48 00 02 98 */	b lbl_80396C60
lbl_803969CC:
/* 803969CC  38 60 00 19 */	li r3, 0x19
/* 803969D0  48 00 08 D5 */	bl hreg_init_check
/* 803969D4  2C 03 00 00 */	cmpwi r3, 0
/* 803969D8  41 82 00 48 */	beq lbl_80396A20
/* 803969DC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 803969E0  38 E0 00 00 */	li r7, 0
/* 803969E4  38 C3 61 38 */	addi r6, r3, debug_mode@l /* 0x81166138@l */
/* 803969E8  3C 80 80 66 */	lis r4, ScreenHeight@ha /* 0x8065F014@ha */
/* 803969EC  80 A6 00 00 */	lwz r5, 0(r6)
/* 803969F0  3C 60 80 66 */	lis r3, data_8065F010@ha /* 0x8065F010@ha */
/* 803969F4  B0 E5 10 76 */	sth r7, 0x1076(r5)
/* 803969F8  80 A6 00 00 */	lwz r5, 0(r6)
/* 803969FC  B0 E5 10 78 */	sth r7, 0x1078(r5)
/* 80396A00  80 04 F0 14 */	lwz r0, ScreenHeight@l(r4)  /* 0x8065F014@l */
/* 80396A04  80 86 00 00 */	lwz r4, 0(r6)
/* 80396A08  B0 04 10 7A */	sth r0, 0x107a(r4)
/* 80396A0C  80 86 00 00 */	lwz r4, 0(r6)
/* 80396A10  B0 E4 10 7C */	sth r7, 0x107c(r4)
/* 80396A14  80 03 F0 10 */	lwz r0, data_8065F010@l(r3)  /* 0x8065F010@l */
/* 80396A18  80 66 00 00 */	lwz r3, 0(r6)
/* 80396A1C  B0 03 10 7E */	sth r0, 0x107e(r3)
lbl_80396A20:
/* 80396A20  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80396A24  38 C3 61 38 */	addi r6, r3, debug_mode@l /* 0x81166138@l */
/* 80396A28  80 E6 00 00 */	lwz r7, 0(r6)
/* 80396A2C  A8 07 10 76 */	lha r0, 0x1076(r7)
/* 80396A30  2C 00 00 02 */	cmpwi r0, 2
/* 80396A34  41 82 00 40 */	beq lbl_80396A74
/* 80396A38  40 80 00 70 */	bge lbl_80396AA8
/* 80396A3C  2C 00 00 01 */	cmpwi r0, 1
/* 80396A40  40 80 00 08 */	bge lbl_80396A48
/* 80396A44  48 00 00 64 */	b lbl_80396AA8
lbl_80396A48:
/* 80396A48  38 A0 00 00 */	li r5, 0
/* 80396A4C  38 80 00 F0 */	li r4, 0xf0
/* 80396A50  B0 A7 10 78 */	sth r5, 0x1078(r7)
/* 80396A54  38 00 01 40 */	li r0, 0x140
/* 80396A58  80 66 00 00 */	lwz r3, 0(r6)
/* 80396A5C  B0 83 10 7A */	sth r4, 0x107a(r3)
/* 80396A60  80 66 00 00 */	lwz r3, 0(r6)
/* 80396A64  B0 A3 10 7C */	sth r5, 0x107c(r3)
/* 80396A68  80 66 00 00 */	lwz r3, 0(r6)
/* 80396A6C  B0 03 10 7E */	sth r0, 0x107e(r3)
/* 80396A70  48 00 00 38 */	b lbl_80396AA8
lbl_80396A74:
/* 80396A74  38 A0 00 00 */	li r5, 0
/* 80396A78  3C 60 80 66 */	lis r3, ScreenHeight@ha /* 0x8065F014@ha */
/* 80396A7C  B0 A7 10 78 */	sth r5, 0x1078(r7)
/* 80396A80  38 83 F0 14 */	addi r4, r3, ScreenHeight@l /* 0x8065F014@l */
/* 80396A84  3C 60 80 66 */	lis r3, data_8065F010@ha /* 0x8065F010@ha */
/* 80396A88  80 04 00 00 */	lwz r0, 0(r4)
/* 80396A8C  80 86 00 00 */	lwz r4, 0(r6)
/* 80396A90  B0 04 10 7A */	sth r0, 0x107a(r4)
/* 80396A94  80 86 00 00 */	lwz r4, 0(r6)
/* 80396A98  B0 A4 10 7C */	sth r5, 0x107c(r4)
/* 80396A9C  80 03 F0 10 */	lwz r0, data_8065F010@l(r3)  /* 0x8065F010@l */
/* 80396AA0  80 66 00 00 */	lwz r3, 0(r6)
/* 80396AA4  B0 03 10 7E */	sth r0, 0x107e(r3)
lbl_80396AA8:
/* 80396AA8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80396AAC  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80396AB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80396AB4  A8 03 10 78 */	lha r0, 0x1078(r3)
/* 80396AB8  7C 00 07 35 */	extsh. r0, r0
/* 80396ABC  40 80 00 0C */	bge lbl_80396AC8
/* 80396AC0  38 00 00 00 */	li r0, 0
/* 80396AC4  B0 03 10 78 */	sth r0, 0x1078(r3)
lbl_80396AC8:
/* 80396AC8  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 80396ACC  3C 60 80 66 */	lis r3, ScreenHeight@ha /* 0x8065F014@ha */
/* 80396AD0  38 84 61 38 */	addi r4, r4, debug_mode@l /* 0x81166138@l */
/* 80396AD4  80 84 00 00 */	lwz r4, 0(r4)
/* 80396AD8  38 63 F0 14 */	addi r3, r3, ScreenHeight@l /* 0x8065F014@l */
/* 80396ADC  80 63 00 00 */	lwz r3, 0(r3)
/* 80396AE0  A8 04 10 7A */	lha r0, 0x107a(r4)
/* 80396AE4  7C 00 18 00 */	cmpw r0, r3
/* 80396AE8  40 81 00 08 */	ble lbl_80396AF0
/* 80396AEC  B0 64 10 7A */	sth r3, 0x107a(r4)
lbl_80396AF0:
/* 80396AF0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80396AF4  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80396AF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80396AFC  A8 03 10 7C */	lha r0, 0x107c(r3)
/* 80396B00  7C 00 07 35 */	extsh. r0, r0
/* 80396B04  40 80 00 0C */	bge lbl_80396B10
/* 80396B08  38 00 00 00 */	li r0, 0
/* 80396B0C  B0 03 10 7C */	sth r0, 0x107c(r3)
lbl_80396B10:
/* 80396B10  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 80396B14  3C 60 80 66 */	lis r3, data_8065F010@ha /* 0x8065F010@ha */
/* 80396B18  38 84 61 38 */	addi r4, r4, debug_mode@l /* 0x81166138@l */
/* 80396B1C  80 84 00 00 */	lwz r4, 0(r4)
/* 80396B20  38 63 F0 10 */	addi r3, r3, data_8065F010@l /* 0x8065F010@l */
/* 80396B24  80 63 00 00 */	lwz r3, 0(r3)
/* 80396B28  A8 04 10 7E */	lha r0, 0x107e(r4)
/* 80396B2C  7C 00 18 00 */	cmpw r0, r3
/* 80396B30  40 81 01 30 */	ble lbl_80396C60
/* 80396B34  B0 64 10 7E */	sth r3, 0x107e(r4)
/* 80396B38  48 00 01 28 */	b lbl_80396C60
lbl_80396B3C:
/* 80396B3C  38 60 00 27 */	li r3, 0x27
/* 80396B40  48 00 07 65 */	bl hreg_init_check
/* 80396B44  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80396B48  80 A3 61 38 */	lwz r5, debug_mode@l(r3)  /* 0x81166138@l */
/* 80396B4C  A8 05 10 76 */	lha r0, 0x1076(r5)
/* 80396B50  2C 00 00 02 */	cmpwi r0, 2
/* 80396B54  41 82 00 4C */	beq lbl_80396BA0
/* 80396B58  40 80 00 14 */	bge lbl_80396B6C
/* 80396B5C  2C 00 00 00 */	cmpwi r0, 0
/* 80396B60  41 82 01 00 */	beq lbl_80396C60
/* 80396B64  40 80 00 14 */	bge lbl_80396B78
/* 80396B68  48 00 00 F8 */	b lbl_80396C60
lbl_80396B6C:
/* 80396B6C  2C 00 00 04 */	cmpwi r0, 4
/* 80396B70  40 80 00 F0 */	bge lbl_80396C60
/* 80396B74  48 00 00 44 */	b lbl_80396BB8
lbl_80396B78:
/* 80396B78  A8 05 10 7A */	lha r0, 0x107a(r5)
/* 80396B7C  A8 85 10 78 */	lha r4, 0x1078(r5)
/* 80396B80  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80396B84  A8 05 10 34 */	lha r0, 0x1034(r5)
/* 80396B88  50 83 44 2E */	rlwimi r3, r4, 8, 0x10, 0x17
/* 80396B8C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80396B90  7C 00 18 00 */	cmpw r0, r3
/* 80396B94  41 82 00 CC */	beq lbl_80396C60
/* 80396B98  B0 65 10 34 */	sth r3, 0x1034(r5)
/* 80396B9C  48 00 00 C4 */	b lbl_80396C60
lbl_80396BA0:
/* 80396BA0  A8 05 10 34 */	lha r0, 0x1034(r5)
/* 80396BA4  7C 00 07 35 */	extsh. r0, r0
/* 80396BA8  41 82 00 B8 */	beq lbl_80396C60
/* 80396BAC  38 00 00 00 */	li r0, 0
/* 80396BB0  B0 05 10 34 */	sth r0, 0x1034(r5)
/* 80396BB4  48 00 00 AC */	b lbl_80396C60
lbl_80396BB8:
/* 80396BB8  A8 05 10 7C */	lha r0, 0x107c(r5)
/* 80396BBC  A8 85 10 7A */	lha r4, 0x107a(r5)
/* 80396BC0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80396BC4  A8 05 10 36 */	lha r0, 0x1036(r5)
/* 80396BC8  50 83 44 2E */	rlwimi r3, r4, 8, 0x10, 0x17
/* 80396BCC  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80396BD0  7C 00 18 00 */	cmpw r0, r3
/* 80396BD4  41 82 00 8C */	beq lbl_80396C60
/* 80396BD8  B0 65 10 36 */	sth r3, 0x1036(r5)
/* 80396BDC  48 00 00 84 */	b lbl_80396C60
lbl_80396BE0:
/* 80396BE0  38 60 02 58 */	li r3, 0x258
/* 80396BE4  48 00 06 C1 */	bl hreg_init_check
/* 80396BE8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80396BEC  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80396BF0  80 63 00 00 */	lwz r3, 0(r3)
/* 80396BF4  A8 03 10 76 */	lha r0, 0x1076(r3)
/* 80396BF8  7C 00 07 35 */	extsh. r0, r0
/* 80396BFC  40 80 00 0C */	bge lbl_80396C08
/* 80396C00  38 00 00 00 */	li r0, 0
/* 80396C04  B0 03 10 76 */	sth r0, 0x1076(r3)
lbl_80396C08:
/* 80396C08  38 60 02 9A */	li r3, 0x29a
/* 80396C0C  48 00 06 99 */	bl hreg_init_check
/* 80396C10  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80396C14  80 83 61 38 */	lwz r4, debug_mode@l(r3)  /* 0x81166138@l */
/* 80396C18  A8 04 10 76 */	lha r0, 0x1076(r4)
/* 80396C1C  2C 00 00 02 */	cmpwi r0, 2
/* 80396C20  41 82 00 2C */	beq lbl_80396C4C
/* 80396C24  40 80 00 3C */	bge lbl_80396C60
/* 80396C28  2C 00 00 01 */	cmpwi r0, 1
/* 80396C2C  40 80 00 08 */	bge lbl_80396C34
/* 80396C30  48 00 00 30 */	b lbl_80396C60
lbl_80396C34:
/* 80396C34  A8 04 10 78 */	lha r0, 0x1078(r4)
/* 80396C38  54 03 A0 16 */	slwi r3, r0, 0x14
/* 80396C3C  3C 63 80 00 */	addis r3, r3, 0x8000
/* 80396C40  88 03 00 00 */	lbz r0, 0(r3)
/* 80396C44  B0 04 10 7A */	sth r0, 0x107a(r4)
/* 80396C48  48 00 00 18 */	b lbl_80396C60
lbl_80396C4C:
/* 80396C4C  A8 04 10 78 */	lha r0, 0x1078(r4)
/* 80396C50  A8 84 10 7A */	lha r4, 0x107a(r4)
/* 80396C54  54 03 A0 16 */	slwi r3, r0, 0x14
/* 80396C58  3C 63 80 00 */	addis r3, r3, 0x8000
/* 80396C5C  98 83 00 00 */	stb r4, 0(r3)
lbl_80396C60:
/* 80396C60  38 60 02 9B */	li r3, 0x29b
/* 80396C64  48 00 06 41 */	bl hreg_init_check
/* 80396C68  38 60 00 22 */	li r3, 0x22
/* 80396C6C  48 00 06 39 */	bl hreg_init_check
/* 80396C70  38 60 00 23 */	li r3, 0x23
/* 80396C74  48 00 06 31 */	bl hreg_init_check
/* 80396C78  38 60 00 26 */	li r3, 0x26
/* 80396C7C  48 00 06 29 */	bl hreg_init_check
/* 80396C80  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80396C84  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80396C88  80 63 00 00 */	lwz r3, 0(r3)
/* 80396C8C  A8 63 00 FE */	lha r3, 0xfe(r3)
/* 80396C90  7C 60 07 35 */	extsh. r0, r3
/* 80396C94  41 82 00 90 */	beq lbl_80396D24
/* 80396C98  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80396C9C  41 82 00 0C */	beq lbl_80396CA8
/* 80396CA0  4B CC 39 B5 */	bl func_8005A654
/* 80396CA4  48 00 00 14 */	b lbl_80396CB8
lbl_80396CA8:
/* 80396CA8  4B CE 1A 71 */	bl func_80078718
/* 80396CAC  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 80396CB0  41 82 00 08 */	beq lbl_80396CB8
/* 80396CB4  4B CC 39 AD */	bl OSReportEnable
lbl_80396CB8:
/* 80396CB8  4B CC A3 F5 */	bl JC_JUTDbPrint_getManager
/* 80396CBC  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 80396CC0  38 84 61 38 */	addi r4, r4, debug_mode@l /* 0x81166138@l */
/* 80396CC4  80 84 00 00 */	lwz r4, 0(r4)
/* 80396CC8  A8 04 00 FE */	lha r0, 0xfe(r4)
/* 80396CCC  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 80396CD0  7C 00 00 34 */	cntlzw r0, r0
/* 80396CD4  54 04 D9 7E */	srwi r4, r0, 5
/* 80396CD8  4B CC A3 DD */	bl JC_JUTDbPrint_setVisible
/* 80396CDC  4B CC AC 51 */	bl JC_JUTProcBar_getManager
/* 80396CE0  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 80396CE4  38 84 61 38 */	addi r4, r4, debug_mode@l /* 0x81166138@l */
/* 80396CE8  80 84 00 00 */	lwz r4, 0(r4)
/* 80396CEC  A8 04 00 FE */	lha r0, 0xfe(r4)
/* 80396CF0  54 00 07 7A */	rlwinm r0, r0, 0, 0x1d, 0x1d
/* 80396CF4  7C 00 00 34 */	cntlzw r0, r0
/* 80396CF8  54 04 D9 7E */	srwi r4, r0, 5
/* 80396CFC  4B CC AC 39 */	bl JC_JUTProcBar_setVisible
/* 80396D00  4B CC AC 2D */	bl JC_JUTProcBar_getManager
/* 80396D04  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 80396D08  38 84 61 38 */	addi r4, r4, debug_mode@l /* 0x81166138@l */
/* 80396D0C  80 84 00 00 */	lwz r4, 0(r4)
/* 80396D10  A8 04 00 FE */	lha r0, 0xfe(r4)
/* 80396D14  54 00 07 7A */	rlwinm r0, r0, 0, 0x1d, 0x1d
/* 80396D18  7C 00 00 34 */	cntlzw r0, r0
/* 80396D1C  54 04 D9 7E */	srwi r4, r0, 5
/* 80396D20  4B CC AC 25 */	bl JC_JUTProcBar_setVisibleHeapBar
lbl_80396D24:
/* 80396D24  39 61 00 20 */	addi r11, r1, 0x20
/* 80396D28  4B D0 41 F9 */	bl func_8009AF20
/* 80396D2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80396D30  7C 08 03 A6 */	mtlr r0
/* 80396D34  38 21 00 20 */	addi r1, r1, 0x20
/* 80396D38  4E 80 00 20 */	blr 