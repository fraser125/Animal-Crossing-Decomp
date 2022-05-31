lbl_805F87C4:
/* 805F87C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F87C8  7C 08 02 A6 */	mflr r0
/* 805F87CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F87D0  39 61 00 20 */	addi r11, r1, 0x20
/* 805F87D4  4B AA 26 F5 */	bl func_8009AEC8
/* 805F87D8  7C 7A 1B 78 */	mr r26, r3
/* 805F87DC  7C 80 07 34 */	extsh r0, r4
/* 805F87E0  7F 4B 07 34 */	extsh r11, r26
/* 805F87E4  7C BB 2B 78 */	mr r27, r5
/* 805F87E8  7C 0B 00 00 */	cmpw r11, r0
/* 805F87EC  7C FC 3B 78 */	mr r28, r7
/* 805F87F0  7D 1D 43 78 */	mr r29, r8
/* 805F87F4  7D 3E 4B 78 */	mr r30, r9
/* 805F87F8  7D 5F 53 78 */	mr r31, r10
/* 805F87FC  40 80 00 50 */	bge lbl_805F884C
/* 805F8800  7F 84 07 34 */	extsh r4, r28
/* 805F8804  7F A0 07 34 */	extsh r0, r29
/* 805F8808  7C 04 00 00 */	cmpw r4, r0
/* 805F880C  40 80 00 18 */	bge lbl_805F8824
/* 805F8810  7F 64 DB 78 */	mr r4, r27
/* 805F8814  7F 85 E3 78 */	mr r5, r28
/* 805F8818  7F C6 F3 78 */	mr r6, r30
/* 805F881C  4B FF FF 69 */	bl mTG_change_mail2
/* 805F8820  48 00 00 90 */	b lbl_805F88B0
lbl_805F8824:
/* 805F8824  7F 64 DB 78 */	mr r4, r27
/* 805F8828  7F A5 EB 78 */	mr r5, r29
/* 805F882C  7F E6 FB 78 */	mr r6, r31
/* 805F8830  4B FF FF 55 */	bl mTG_change_mail2
/* 805F8834  7F 43 D3 78 */	mr r3, r26
/* 805F8838  7F 64 DB 78 */	mr r4, r27
/* 805F883C  7F 85 E3 78 */	mr r5, r28
/* 805F8840  7F C6 F3 78 */	mr r6, r30
/* 805F8844  4B FF FF 41 */	bl mTG_change_mail2
/* 805F8848  48 00 00 68 */	b lbl_805F88B0
lbl_805F884C:
/* 805F884C  7F 83 07 34 */	extsh r3, r28
/* 805F8850  7F A0 07 34 */	extsh r0, r29
/* 805F8854  7C 03 00 00 */	cmpw r3, r0
/* 805F8858  40 80 00 30 */	bge lbl_805F8888
/* 805F885C  7C 83 23 78 */	mr r3, r4
/* 805F8860  7C C4 33 78 */	mr r4, r6
/* 805F8864  7F 85 E3 78 */	mr r5, r28
/* 805F8868  7F C6 F3 78 */	mr r6, r30
/* 805F886C  4B FF FF 19 */	bl mTG_change_mail2
/* 805F8870  7F 43 D3 78 */	mr r3, r26
/* 805F8874  7F 64 DB 78 */	mr r4, r27
/* 805F8878  7F 85 E3 78 */	mr r5, r28
/* 805F887C  7F C6 F3 78 */	mr r6, r30
/* 805F8880  4B FF FF 05 */	bl mTG_change_mail2
/* 805F8884  48 00 00 2C */	b lbl_805F88B0
lbl_805F8888:
/* 805F8888  7C 83 23 78 */	mr r3, r4
/* 805F888C  7C C4 33 78 */	mr r4, r6
/* 805F8890  7F 85 E3 78 */	mr r5, r28
/* 805F8894  7F C6 F3 78 */	mr r6, r30
/* 805F8898  4B FF FE ED */	bl mTG_change_mail2
/* 805F889C  7F 43 D3 78 */	mr r3, r26
/* 805F88A0  7F 64 DB 78 */	mr r4, r27
/* 805F88A4  7F A5 EB 78 */	mr r5, r29
/* 805F88A8  7F E6 FB 78 */	mr r6, r31
/* 805F88AC  4B FF FE D9 */	bl mTG_change_mail2
lbl_805F88B0:
/* 805F88B0  39 61 00 20 */	addi r11, r1, 0x20
/* 805F88B4  4B AA 26 61 */	bl func_8009AF14
/* 805F88B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F88BC  7C 08 03 A6 */	mtlr r0
/* 805F88C0  38 21 00 20 */	addi r1, r1, 0x20
/* 805F88C4  4E 80 00 20 */	blr 
