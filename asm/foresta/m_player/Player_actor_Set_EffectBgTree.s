lbl_804DB490:
/* 804DB490  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DB494  7C 08 02 A6 */	mflr r0
/* 804DB498  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DB49C  39 61 00 30 */	addi r11, r1, 0x30
/* 804DB4A0  4B BB FA 2D */	bl func_8009AECC
/* 804DB4A4  7C DD 33 78 */	mr r29, r6
/* 804DB4A8  7C FE 3B 78 */	mr r30, r7
/* 804DB4AC  7C 7F 1B 78 */	mr r31, r3
/* 804DB4B0  7C 9B 23 78 */	mr r27, r4
/* 804DB4B4  7C BC 2B 78 */	mr r28, r5
/* 804DB4B8  7F A4 EB 78 */	mr r4, r29
/* 804DB4BC  7F C5 F3 78 */	mr r5, r30
/* 804DB4C0  38 61 00 08 */	addi r3, r1, 8
/* 804DB4C4  4B EC 9F B9 */	bl mFI_UtNum2CenterWpos
/* 804DB4C8  2C 03 00 00 */	cmpwi r3, 0
/* 804DB4CC  41 82 03 7C */	beq lbl_804DB848
/* 804DB4D0  7F A3 EB 78 */	mr r3, r29
/* 804DB4D4  7F C4 F3 78 */	mr r4, r30
/* 804DB4D8  4B EB 4C BD */	bl mCoBG_UtNum2UtCenterY_Keep
/* 804DB4DC  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 804DB4E0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804DB4E4  28 00 00 60 */	cmplwi r0, 0x60
/* 804DB4E8  38 60 00 00 */	li r3, 0
/* 804DB4EC  41 82 00 0C */	beq lbl_804DB4F8
/* 804DB4F0  28 00 00 82 */	cmplwi r0, 0x82
/* 804DB4F4  40 82 00 08 */	bne lbl_804DB4FC
lbl_804DB4F8:
/* 804DB4F8  38 60 00 01 */	li r3, 1
lbl_804DB4FC:
/* 804DB4FC  2C 03 00 00 */	cmpwi r3, 0
/* 804DB500  41 82 00 24 */	beq lbl_804DB524
/* 804DB504  7F 63 DB 78 */	mr r3, r27
/* 804DB508  4B EE E0 E1 */	bl FGTreeType_check
/* 804DB50C  2C 03 00 02 */	cmpwi r3, 2
/* 804DB510  40 82 00 0C */	bne lbl_804DB51C
/* 804DB514  38 A0 00 0C */	li r5, 0xc
/* 804DB518  48 00 03 04 */	b lbl_804DB81C
lbl_804DB51C:
/* 804DB51C  38 A0 00 03 */	li r5, 3
/* 804DB520  48 00 02 FC */	b lbl_804DB81C
lbl_804DB524:
/* 804DB524  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 804DB528  38 60 00 00 */	li r3, 0
/* 804DB52C  28 00 08 01 */	cmplwi r0, 0x801
/* 804DB530  41 82 00 7C */	beq lbl_804DB5AC
/* 804DB534  28 00 08 06 */	cmplwi r0, 0x806
/* 804DB538  41 82 00 74 */	beq lbl_804DB5AC
/* 804DB53C  28 00 08 0E */	cmplwi r0, 0x80e
/* 804DB540  41 82 00 6C */	beq lbl_804DB5AC
/* 804DB544  28 00 08 16 */	cmplwi r0, 0x816
/* 804DB548  41 82 00 64 */	beq lbl_804DB5AC
/* 804DB54C  28 00 08 1E */	cmplwi r0, 0x81e
/* 804DB550  41 82 00 5C */	beq lbl_804DB5AC
/* 804DB554  28 00 08 26 */	cmplwi r0, 0x826
/* 804DB558  41 82 00 54 */	beq lbl_804DB5AC
/* 804DB55C  28 00 08 2E */	cmplwi r0, 0x82e
/* 804DB560  41 82 00 4C */	beq lbl_804DB5AC
/* 804DB564  28 00 08 33 */	cmplwi r0, 0x833
/* 804DB568  41 82 00 44 */	beq lbl_804DB5AC
/* 804DB56C  28 00 08 38 */	cmplwi r0, 0x838
/* 804DB570  41 82 00 3C */	beq lbl_804DB5AC
/* 804DB574  28 00 08 2E */	cmplwi r0, 0x82e
/* 804DB578  41 82 00 34 */	beq lbl_804DB5AC
/* 804DB57C  28 00 08 33 */	cmplwi r0, 0x833
/* 804DB580  41 82 00 2C */	beq lbl_804DB5AC
/* 804DB584  28 00 08 38 */	cmplwi r0, 0x838
/* 804DB588  41 82 00 24 */	beq lbl_804DB5AC
/* 804DB58C  28 00 08 50 */	cmplwi r0, 0x850
/* 804DB590  41 82 00 1C */	beq lbl_804DB5AC
/* 804DB594  28 00 08 55 */	cmplwi r0, 0x855
/* 804DB598  41 82 00 14 */	beq lbl_804DB5AC
/* 804DB59C  28 00 08 5E */	cmplwi r0, 0x85e
/* 804DB5A0  41 82 00 0C */	beq lbl_804DB5AC
/* 804DB5A4  28 00 08 64 */	cmplwi r0, 0x864
/* 804DB5A8  40 82 00 08 */	bne lbl_804DB5B0
lbl_804DB5AC:
/* 804DB5AC  38 60 00 01 */	li r3, 1
lbl_804DB5B0:
/* 804DB5B0  2C 03 00 00 */	cmpwi r3, 0
/* 804DB5B4  41 82 00 54 */	beq lbl_804DB608
/* 804DB5B8  7F 63 DB 78 */	mr r3, r27
/* 804DB5BC  4B EE E0 2D */	bl FGTreeType_check
/* 804DB5C0  2C 03 00 01 */	cmpwi r3, 1
/* 804DB5C4  40 82 00 0C */	bne lbl_804DB5D0
/* 804DB5C8  38 A0 00 04 */	li r5, 4
/* 804DB5CC  48 00 02 50 */	b lbl_804DB81C
lbl_804DB5D0:
/* 804DB5D0  7F 63 DB 78 */	mr r3, r27
/* 804DB5D4  4B EE E0 15 */	bl FGTreeType_check
/* 804DB5D8  2C 03 00 02 */	cmpwi r3, 2
/* 804DB5DC  40 82 00 0C */	bne lbl_804DB5E8
/* 804DB5E0  38 A0 00 08 */	li r5, 8
/* 804DB5E4  48 00 02 38 */	b lbl_804DB81C
lbl_804DB5E8:
/* 804DB5E8  7F 63 DB 78 */	mr r3, r27
/* 804DB5EC  4B EE DF FD */	bl FGTreeType_check
/* 804DB5F0  2C 03 00 03 */	cmpwi r3, 3
/* 804DB5F4  40 82 00 0C */	bne lbl_804DB600
/* 804DB5F8  38 A0 00 0D */	li r5, 0xd
/* 804DB5FC  48 00 02 20 */	b lbl_804DB81C
lbl_804DB600:
/* 804DB600  38 A0 FF FF */	li r5, -1
/* 804DB604  48 00 02 18 */	b lbl_804DB81C
lbl_804DB608:
/* 804DB608  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 804DB60C  38 60 00 00 */	li r3, 0
/* 804DB610  28 00 08 02 */	cmplwi r0, 0x802
/* 804DB614  41 82 00 7C */	beq lbl_804DB690
/* 804DB618  28 00 08 07 */	cmplwi r0, 0x807
/* 804DB61C  41 82 00 74 */	beq lbl_804DB690
/* 804DB620  28 00 08 0F */	cmplwi r0, 0x80f
/* 804DB624  41 82 00 6C */	beq lbl_804DB690
/* 804DB628  28 00 08 17 */	cmplwi r0, 0x817
/* 804DB62C  41 82 00 64 */	beq lbl_804DB690
/* 804DB630  28 00 08 1F */	cmplwi r0, 0x81f
/* 804DB634  41 82 00 5C */	beq lbl_804DB690
/* 804DB638  28 00 08 27 */	cmplwi r0, 0x827
/* 804DB63C  41 82 00 54 */	beq lbl_804DB690
/* 804DB640  28 00 08 2F */	cmplwi r0, 0x82f
/* 804DB644  41 82 00 4C */	beq lbl_804DB690
/* 804DB648  28 00 08 34 */	cmplwi r0, 0x834
/* 804DB64C  41 82 00 44 */	beq lbl_804DB690
/* 804DB650  28 00 08 39 */	cmplwi r0, 0x839
/* 804DB654  41 82 00 3C */	beq lbl_804DB690
/* 804DB658  28 00 08 2F */	cmplwi r0, 0x82f
/* 804DB65C  41 82 00 34 */	beq lbl_804DB690
/* 804DB660  28 00 08 34 */	cmplwi r0, 0x834
/* 804DB664  41 82 00 2C */	beq lbl_804DB690
/* 804DB668  28 00 08 39 */	cmplwi r0, 0x839
/* 804DB66C  41 82 00 24 */	beq lbl_804DB690
/* 804DB670  28 00 08 51 */	cmplwi r0, 0x851
/* 804DB674  41 82 00 1C */	beq lbl_804DB690
/* 804DB678  28 00 08 56 */	cmplwi r0, 0x856
/* 804DB67C  41 82 00 14 */	beq lbl_804DB690
/* 804DB680  28 00 08 5F */	cmplwi r0, 0x85f
/* 804DB684  41 82 00 0C */	beq lbl_804DB690
/* 804DB688  28 00 08 65 */	cmplwi r0, 0x865
/* 804DB68C  40 82 00 08 */	bne lbl_804DB694
lbl_804DB690:
/* 804DB690  38 60 00 01 */	li r3, 1
lbl_804DB694:
/* 804DB694  2C 03 00 00 */	cmpwi r3, 0
/* 804DB698  41 82 00 54 */	beq lbl_804DB6EC
/* 804DB69C  7F 63 DB 78 */	mr r3, r27
/* 804DB6A0  4B EE DF 49 */	bl FGTreeType_check
/* 804DB6A4  2C 03 00 01 */	cmpwi r3, 1
/* 804DB6A8  40 82 00 0C */	bne lbl_804DB6B4
/* 804DB6AC  38 A0 00 05 */	li r5, 5
/* 804DB6B0  48 00 01 6C */	b lbl_804DB81C
lbl_804DB6B4:
/* 804DB6B4  7F 63 DB 78 */	mr r3, r27
/* 804DB6B8  4B EE DF 31 */	bl FGTreeType_check
/* 804DB6BC  2C 03 00 02 */	cmpwi r3, 2
/* 804DB6C0  40 82 00 0C */	bne lbl_804DB6CC
/* 804DB6C4  38 A0 00 09 */	li r5, 9
/* 804DB6C8  48 00 01 54 */	b lbl_804DB81C
lbl_804DB6CC:
/* 804DB6CC  7F 63 DB 78 */	mr r3, r27
/* 804DB6D0  4B EE DF 19 */	bl FGTreeType_check
/* 804DB6D4  2C 03 00 03 */	cmpwi r3, 3
/* 804DB6D8  40 82 00 0C */	bne lbl_804DB6E4
/* 804DB6DC  38 A0 00 0E */	li r5, 0xe
/* 804DB6E0  48 00 01 3C */	b lbl_804DB81C
lbl_804DB6E4:
/* 804DB6E4  38 A0 00 00 */	li r5, 0
/* 804DB6E8  48 00 01 34 */	b lbl_804DB81C
lbl_804DB6EC:
/* 804DB6EC  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 804DB6F0  38 60 00 00 */	li r3, 0
/* 804DB6F4  28 00 08 03 */	cmplwi r0, 0x803
/* 804DB6F8  41 82 00 7C */	beq lbl_804DB774
/* 804DB6FC  28 00 08 08 */	cmplwi r0, 0x808
/* 804DB700  41 82 00 74 */	beq lbl_804DB774
/* 804DB704  28 00 08 10 */	cmplwi r0, 0x810
/* 804DB708  41 82 00 6C */	beq lbl_804DB774
/* 804DB70C  28 00 08 18 */	cmplwi r0, 0x818
/* 804DB710  41 82 00 64 */	beq lbl_804DB774
/* 804DB714  28 00 08 20 */	cmplwi r0, 0x820
/* 804DB718  41 82 00 5C */	beq lbl_804DB774
/* 804DB71C  28 00 08 28 */	cmplwi r0, 0x828
/* 804DB720  41 82 00 54 */	beq lbl_804DB774
/* 804DB724  28 00 08 30 */	cmplwi r0, 0x830
/* 804DB728  41 82 00 4C */	beq lbl_804DB774
/* 804DB72C  28 00 08 35 */	cmplwi r0, 0x835
/* 804DB730  41 82 00 44 */	beq lbl_804DB774
/* 804DB734  28 00 08 3A */	cmplwi r0, 0x83a
/* 804DB738  41 82 00 3C */	beq lbl_804DB774
/* 804DB73C  28 00 08 30 */	cmplwi r0, 0x830
/* 804DB740  41 82 00 34 */	beq lbl_804DB774
/* 804DB744  28 00 08 35 */	cmplwi r0, 0x835
/* 804DB748  41 82 00 2C */	beq lbl_804DB774
/* 804DB74C  28 00 08 3A */	cmplwi r0, 0x83a
/* 804DB750  41 82 00 24 */	beq lbl_804DB774
/* 804DB754  28 00 08 52 */	cmplwi r0, 0x852
/* 804DB758  41 82 00 1C */	beq lbl_804DB774
/* 804DB75C  28 00 08 57 */	cmplwi r0, 0x857
/* 804DB760  41 82 00 14 */	beq lbl_804DB774
/* 804DB764  28 00 08 60 */	cmplwi r0, 0x860
/* 804DB768  41 82 00 0C */	beq lbl_804DB774
/* 804DB76C  28 00 08 66 */	cmplwi r0, 0x866
/* 804DB770  40 82 00 08 */	bne lbl_804DB778
lbl_804DB774:
/* 804DB774  38 60 00 01 */	li r3, 1
lbl_804DB778:
/* 804DB778  2C 03 00 00 */	cmpwi r3, 0
/* 804DB77C  41 82 00 54 */	beq lbl_804DB7D0
/* 804DB780  7F 63 DB 78 */	mr r3, r27
/* 804DB784  4B EE DE 65 */	bl FGTreeType_check
/* 804DB788  2C 03 00 01 */	cmpwi r3, 1
/* 804DB78C  40 82 00 0C */	bne lbl_804DB798
/* 804DB790  38 A0 00 06 */	li r5, 6
/* 804DB794  48 00 00 88 */	b lbl_804DB81C
lbl_804DB798:
/* 804DB798  7F 63 DB 78 */	mr r3, r27
/* 804DB79C  4B EE DE 4D */	bl FGTreeType_check
/* 804DB7A0  2C 03 00 02 */	cmpwi r3, 2
/* 804DB7A4  40 82 00 0C */	bne lbl_804DB7B0
/* 804DB7A8  38 A0 00 0A */	li r5, 0xa
/* 804DB7AC  48 00 00 70 */	b lbl_804DB81C
lbl_804DB7B0:
/* 804DB7B0  7F 63 DB 78 */	mr r3, r27
/* 804DB7B4  4B EE DE 35 */	bl FGTreeType_check
/* 804DB7B8  2C 03 00 03 */	cmpwi r3, 3
/* 804DB7BC  40 82 00 0C */	bne lbl_804DB7C8
/* 804DB7C0  38 A0 00 0F */	li r5, 0xf
/* 804DB7C4  48 00 00 58 */	b lbl_804DB81C
lbl_804DB7C8:
/* 804DB7C8  38 A0 00 01 */	li r5, 1
/* 804DB7CC  48 00 00 50 */	b lbl_804DB81C
lbl_804DB7D0:
/* 804DB7D0  7F 63 DB 78 */	mr r3, r27
/* 804DB7D4  4B EE DE 15 */	bl FGTreeType_check
/* 804DB7D8  2C 03 00 01 */	cmpwi r3, 1
/* 804DB7DC  40 82 00 0C */	bne lbl_804DB7E8
/* 804DB7E0  38 A0 00 07 */	li r5, 7
/* 804DB7E4  48 00 00 38 */	b lbl_804DB81C
lbl_804DB7E8:
/* 804DB7E8  7F 63 DB 78 */	mr r3, r27
/* 804DB7EC  4B EE DD FD */	bl FGTreeType_check
/* 804DB7F0  2C 03 00 02 */	cmpwi r3, 2
/* 804DB7F4  40 82 00 0C */	bne lbl_804DB800
/* 804DB7F8  38 A0 00 0B */	li r5, 0xb
/* 804DB7FC  48 00 00 20 */	b lbl_804DB81C
lbl_804DB800:
/* 804DB800  7F 63 DB 78 */	mr r3, r27
/* 804DB804  4B EE DD E5 */	bl FGTreeType_check
/* 804DB808  2C 03 00 03 */	cmpwi r3, 3
/* 804DB80C  40 82 00 0C */	bne lbl_804DB818
/* 804DB810  38 A0 00 10 */	li r5, 0x10
/* 804DB814  48 00 00 08 */	b lbl_804DB81C
lbl_804DB818:
/* 804DB818  38 A0 00 02 */	li r5, 2
lbl_804DB81C:
/* 804DB81C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DB820  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DB824  3C 63 00 02 */	addis r3, r3, 2
/* 804DB828  81 83 60 C0 */	lwz r12, 0x60c0(r3)
/* 804DB82C  28 0C 00 00 */	cmplwi r12, 0
/* 804DB830  41 82 00 18 */	beq lbl_804DB848
/* 804DB834  7F E3 FB 78 */	mr r3, r31
/* 804DB838  7F 84 E3 78 */	mr r4, r28
/* 804DB83C  38 C1 00 08 */	addi r6, r1, 8
/* 804DB840  7D 89 03 A6 */	mtctr r12
/* 804DB844  4E 80 04 21 */	bctrl 
lbl_804DB848:
/* 804DB848  39 61 00 30 */	addi r11, r1, 0x30
/* 804DB84C  4B BB F6 CD */	bl func_8009AF18
/* 804DB850  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DB854  7C 08 03 A6 */	mtlr r0
/* 804DB858  38 21 00 30 */	addi r1, r1, 0x30
/* 804DB85C  4E 80 00 20 */	blr 
