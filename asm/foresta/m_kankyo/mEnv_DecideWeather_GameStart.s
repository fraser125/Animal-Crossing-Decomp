lbl_803BA6D4:
/* 803BA6D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BA6D8  7C 08 02 A6 */	mflr r0
/* 803BA6DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BA6E0  38 61 00 0E */	addi r3, r1, 0xe
/* 803BA6E4  38 81 00 0C */	addi r4, r1, 0xc
/* 803BA6E8  4B FF F6 61 */	bl mEnv_RandomWeather
/* 803BA6EC  38 61 00 0A */	addi r3, r1, 0xa
/* 803BA6F0  38 81 00 08 */	addi r4, r1, 8
/* 803BA6F4  4B FE 08 59 */	bl mEv_GetEventWeather
/* 803BA6F8  A8 61 00 0A */	lha r3, 0xa(r1)
/* 803BA6FC  2C 03 FF FF */	cmpwi r3, -1
/* 803BA700  41 82 00 10 */	beq lbl_803BA710
/* 803BA704  A8 01 00 08 */	lha r0, 8(r1)
/* 803BA708  B0 61 00 0E */	sth r3, 0xe(r1)
/* 803BA70C  B0 01 00 0C */	sth r0, 0xc(r1)
lbl_803BA710:
/* 803BA710  4B FE 04 21 */	bl mEv_CheckRealArbeit
/* 803BA714  2C 03 00 01 */	cmpwi r3, 1
/* 803BA718  40 82 00 1C */	bne lbl_803BA734
/* 803BA71C  A8 01 00 0E */	lha r0, 0xe(r1)
/* 803BA720  2C 00 00 01 */	cmpwi r0, 1
/* 803BA724  40 82 00 10 */	bne lbl_803BA734
/* 803BA728  38 00 00 00 */	li r0, 0
/* 803BA72C  B0 01 00 0E */	sth r0, 0xe(r1)
/* 803BA730  B0 01 00 0C */	sth r0, 0xc(r1)
lbl_803BA734:
/* 803BA734  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803BA738  A8 C1 00 0E */	lha r6, 0xe(r1)
/* 803BA73C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803BA740  A8 81 00 0C */	lha r4, 0xc(r1)
/* 803BA744  3C A3 00 02 */	addis r5, r3, 2
/* 803BA748  80 65 61 20 */	lwz r3, 0x6120(r5)
/* 803BA74C  80 05 61 24 */	lwz r0, 0x6124(r5)
/* 803BA750  B0 C5 66 6C */	sth r6, 0x666c(r5)
/* 803BA754  B0 85 66 6E */	sth r4, 0x666e(r5)
/* 803BA758  90 65 66 70 */	stw r3, 0x6670(r5)
/* 803BA75C  90 05 66 74 */	stw r0, 0x6674(r5)
/* 803BA760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BA764  7C 08 03 A6 */	mtlr r0
/* 803BA768  38 21 00 10 */	addi r1, r1, 0x10
/* 803BA76C  4E 80 00 20 */	blr 
