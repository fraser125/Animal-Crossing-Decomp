lbl_803C7738:
/* 803C7738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C773C  7C 08 02 A6 */	mflr r0
/* 803C7740  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803C7744  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C7748  28 04 1E EC */	cmplwi r4, 0x1eec
/* 803C774C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C7750  41 80 00 6C */	blt lbl_803C77BC
/* 803C7754  28 04 1F 4F */	cmplwi r4, 0x1f4f
/* 803C7758  41 81 00 64 */	bgt lbl_803C77BC
/* 803C775C  28 04 1E EC */	cmplwi r4, 0x1eec
/* 803C7760  38 00 00 00 */	li r0, 0
/* 803C7764  41 80 00 10 */	blt lbl_803C7774
/* 803C7768  28 04 1F 4F */	cmplwi r4, 0x1f4f
/* 803C776C  41 81 00 08 */	bgt lbl_803C7774
/* 803C7770  38 00 00 01 */	li r0, 1
lbl_803C7774:
/* 803C7774  20 00 00 00 */	subfic r0, r0, 0
/* 803C7778  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803C777C  7C 80 01 10 */	subfe r4, r0, r0
/* 803C7780  38 03 E1 14 */	addi r0, r3, -7916
/* 803C7784  7C 00 16 70 */	srawi r0, r0, 2
/* 803C7788  7C 1F 20 38 */	and r31, r0, r4
/* 803C778C  7F E3 FB 78 */	mr r3, r31
/* 803C7790  4B FF FC 49 */	bl func_803C73D8
/* 803C7794  2C 03 00 01 */	cmpwi r3, 1
/* 803C7798  41 80 00 1C */	blt lbl_803C77B4
/* 803C779C  7F E3 FB 78 */	mr r3, r31
/* 803C77A0  4B FF FC 39 */	bl func_803C73D8
/* 803C77A4  2C 03 00 05 */	cmpwi r3, 5
/* 803C77A8  41 81 00 0C */	bgt lbl_803C77B4
/* 803C77AC  38 60 00 02 */	li r3, 2
/* 803C77B0  48 00 01 64 */	b lbl_803C7914
lbl_803C77B4:
/* 803C77B4  38 60 00 01 */	li r3, 1
/* 803C77B8  48 00 01 5C */	b lbl_803C7914
lbl_803C77BC:
/* 803C77BC  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803C77C0  28 04 12 AC */	cmplwi r4, 0x12ac
/* 803C77C4  41 80 00 6C */	blt lbl_803C7830
/* 803C77C8  28 04 12 E7 */	cmplwi r4, 0x12e7
/* 803C77CC  41 81 00 64 */	bgt lbl_803C7830
/* 803C77D0  28 04 12 AC */	cmplwi r4, 0x12ac
/* 803C77D4  38 00 00 00 */	li r0, 0
/* 803C77D8  41 80 00 10 */	blt lbl_803C77E8
/* 803C77DC  28 04 12 E7 */	cmplwi r4, 0x12e7
/* 803C77E0  41 81 00 08 */	bgt lbl_803C77E8
/* 803C77E4  38 00 00 01 */	li r0, 1
lbl_803C77E8:
/* 803C77E8  20 00 00 00 */	subfic r0, r0, 0
/* 803C77EC  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803C77F0  7C 80 01 10 */	subfe r4, r0, r0
/* 803C77F4  38 03 ED 54 */	addi r0, r3, -4780
/* 803C77F8  7C 00 16 70 */	srawi r0, r0, 2
/* 803C77FC  7C 1F 20 38 */	and r31, r0, r4
/* 803C7800  7F E3 FB 78 */	mr r3, r31
/* 803C7804  4B FF FC 25 */	bl mMmd_ArtInfo
/* 803C7808  2C 03 00 01 */	cmpwi r3, 1
/* 803C780C  41 80 00 1C */	blt lbl_803C7828
/* 803C7810  7F E3 FB 78 */	mr r3, r31
/* 803C7814  4B FF FC 15 */	bl mMmd_ArtInfo
/* 803C7818  2C 03 00 05 */	cmpwi r3, 5
/* 803C781C  41 81 00 0C */	bgt lbl_803C7828
/* 803C7820  38 60 00 02 */	li r3, 2
/* 803C7824  48 00 00 F0 */	b lbl_803C7914
lbl_803C7828:
/* 803C7828  38 60 00 01 */	li r3, 1
/* 803C782C  48 00 00 E8 */	b lbl_803C7914
lbl_803C7830:
/* 803C7830  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803C7834  28 04 2D 00 */	cmplwi r4, 0x2d00
/* 803C7838  41 80 00 68 */	blt lbl_803C78A0
/* 803C783C  28 04 2D 28 */	cmplwi r4, 0x2d28
/* 803C7840  40 80 00 60 */	bge lbl_803C78A0
/* 803C7844  28 04 2D 00 */	cmplwi r4, 0x2d00
/* 803C7848  38 00 00 00 */	li r0, 0
/* 803C784C  41 80 00 10 */	blt lbl_803C785C
/* 803C7850  28 04 2D 28 */	cmplwi r4, 0x2d28
/* 803C7854  40 80 00 08 */	bge lbl_803C785C
/* 803C7858  38 00 00 01 */	li r0, 1
lbl_803C785C:
/* 803C785C  20 00 00 00 */	subfic r0, r0, 0
/* 803C7860  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803C7864  7C 80 01 10 */	subfe r4, r0, r0
/* 803C7868  38 03 D3 00 */	addi r0, r3, -11520
/* 803C786C  7C 1F 20 38 */	and r31, r0, r4
/* 803C7870  7F E3 FB 78 */	mr r3, r31
/* 803C7874  4B FF FC 05 */	bl mMmd_InsectInfo
/* 803C7878  2C 03 00 01 */	cmpwi r3, 1
/* 803C787C  41 80 00 1C */	blt lbl_803C7898
/* 803C7880  7F E3 FB 78 */	mr r3, r31
/* 803C7884  4B FF FB F5 */	bl mMmd_InsectInfo
/* 803C7888  2C 03 00 05 */	cmpwi r3, 5
/* 803C788C  41 81 00 0C */	bgt lbl_803C7898
/* 803C7890  38 60 00 02 */	li r3, 2
/* 803C7894  48 00 00 80 */	b lbl_803C7914
lbl_803C7898:
/* 803C7898  38 60 00 01 */	li r3, 1
/* 803C789C  48 00 00 78 */	b lbl_803C7914
lbl_803C78A0:
/* 803C78A0  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803C78A4  28 04 23 00 */	cmplwi r4, 0x2300
/* 803C78A8  41 80 00 68 */	blt lbl_803C7910
/* 803C78AC  28 04 23 28 */	cmplwi r4, 0x2328
/* 803C78B0  41 81 00 60 */	bgt lbl_803C7910
/* 803C78B4  28 04 23 00 */	cmplwi r4, 0x2300
/* 803C78B8  38 00 00 00 */	li r0, 0
/* 803C78BC  41 80 00 10 */	blt lbl_803C78CC
/* 803C78C0  28 04 23 28 */	cmplwi r4, 0x2328
/* 803C78C4  41 81 00 08 */	bgt lbl_803C78CC
/* 803C78C8  38 00 00 01 */	li r0, 1
lbl_803C78CC:
/* 803C78CC  20 00 00 00 */	subfic r0, r0, 0
/* 803C78D0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803C78D4  7C 80 01 10 */	subfe r4, r0, r0
/* 803C78D8  38 03 DD 00 */	addi r0, r3, -8960
/* 803C78DC  7C 1F 20 38 */	and r31, r0, r4
/* 803C78E0  7F E3 FB 78 */	mr r3, r31
/* 803C78E4  4B FF FB E5 */	bl mMmd_FishInfo
/* 803C78E8  2C 03 00 01 */	cmpwi r3, 1
/* 803C78EC  41 80 00 1C */	blt lbl_803C7908
/* 803C78F0  7F E3 FB 78 */	mr r3, r31
/* 803C78F4  4B FF FB D5 */	bl mMmd_FishInfo
/* 803C78F8  2C 03 00 05 */	cmpwi r3, 5
/* 803C78FC  41 81 00 0C */	bgt lbl_803C7908
/* 803C7900  38 60 00 02 */	li r3, 2
/* 803C7904  48 00 00 10 */	b lbl_803C7914
lbl_803C7908:
/* 803C7908  38 60 00 01 */	li r3, 1
/* 803C790C  48 00 00 08 */	b lbl_803C7914
lbl_803C7910:
/* 803C7910  38 60 00 00 */	li r3, 0
lbl_803C7914:
/* 803C7914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C7918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C791C  7C 08 03 A6 */	mtlr r0
/* 803C7920  38 21 00 10 */	addi r1, r1, 0x10
/* 803C7924  4E 80 00 20 */	blr 
