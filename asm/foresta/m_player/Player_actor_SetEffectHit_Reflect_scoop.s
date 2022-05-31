lbl_804F8658:
/* 804F8658  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804F865C  7C 08 02 A6 */	mflr r0
/* 804F8660  90 01 00 74 */	stw r0, 0x74(r1)
/* 804F8664  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804F8668  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804F866C  39 61 00 60 */	addi r11, r1, 0x60
/* 804F8670  4B BA 28 59 */	bl func_8009AEC8
/* 804F8674  3C A0 80 65 */	lis r5, lit_6693@ha /* 0x806480E0@ha */
/* 804F8678  7C 7D 1B 78 */	mr r29, r3
/* 804F867C  C0 25 80 E0 */	lfs f1, lit_6693@l(r5)  /* 0x806480E0@l */
/* 804F8680  7C 9C 23 78 */	mr r28, r4
/* 804F8684  38 7D 01 74 */	addi r3, r29, 0x174
/* 804F8688  4B FD EF 79 */	bl Player_actor_Check_AnimationFrame
/* 804F868C  2C 03 00 00 */	cmpwi r3, 0
/* 804F8690  41 82 04 E4 */	beq lbl_804F8B74
/* 804F8694  3B 7D 0D 18 */	addi r27, r29, 0xd18
/* 804F8698  3B C0 FF FF */	li r30, -1
/* 804F869C  A3 FD 0D 24 */	lhz r31, 0xd24(r29)
/* 804F86A0  38 00 00 00 */	li r0, 0
/* 804F86A4  83 5D 0D 28 */	lwz r26, 0xd28(r29)
/* 804F86A8  28 1F 08 01 */	cmplwi r31, 0x801
/* 804F86AC  41 82 02 DC */	beq lbl_804F8988
/* 804F86B0  28 1F 08 06 */	cmplwi r31, 0x806
/* 804F86B4  41 82 02 D4 */	beq lbl_804F8988
/* 804F86B8  28 1F 08 0E */	cmplwi r31, 0x80e
/* 804F86BC  41 82 02 CC */	beq lbl_804F8988
/* 804F86C0  28 1F 08 16 */	cmplwi r31, 0x816
/* 804F86C4  41 82 02 C4 */	beq lbl_804F8988
/* 804F86C8  28 1F 08 1E */	cmplwi r31, 0x81e
/* 804F86CC  41 82 02 BC */	beq lbl_804F8988
/* 804F86D0  28 1F 08 26 */	cmplwi r31, 0x826
/* 804F86D4  41 82 02 B4 */	beq lbl_804F8988
/* 804F86D8  28 1F 08 2E */	cmplwi r31, 0x82e
/* 804F86DC  41 82 02 AC */	beq lbl_804F8988
/* 804F86E0  28 1F 08 33 */	cmplwi r31, 0x833
/* 804F86E4  41 82 02 A4 */	beq lbl_804F8988
/* 804F86E8  28 1F 08 38 */	cmplwi r31, 0x838
/* 804F86EC  41 82 02 9C */	beq lbl_804F8988
/* 804F86F0  28 1F 08 2E */	cmplwi r31, 0x82e
/* 804F86F4  41 82 02 94 */	beq lbl_804F8988
/* 804F86F8  28 1F 08 33 */	cmplwi r31, 0x833
/* 804F86FC  41 82 02 8C */	beq lbl_804F8988
/* 804F8700  28 1F 08 38 */	cmplwi r31, 0x838
/* 804F8704  41 82 02 84 */	beq lbl_804F8988
/* 804F8708  28 1F 08 50 */	cmplwi r31, 0x850
/* 804F870C  41 82 02 7C */	beq lbl_804F8988
/* 804F8710  28 1F 08 55 */	cmplwi r31, 0x855
/* 804F8714  41 82 02 74 */	beq lbl_804F8988
/* 804F8718  28 1F 08 5E */	cmplwi r31, 0x85e
/* 804F871C  41 82 02 6C */	beq lbl_804F8988
/* 804F8720  28 1F 08 64 */	cmplwi r31, 0x864
/* 804F8724  41 82 02 64 */	beq lbl_804F8988
/* 804F8728  28 1F 08 02 */	cmplwi r31, 0x802
/* 804F872C  41 82 02 5C */	beq lbl_804F8988
/* 804F8730  28 1F 08 07 */	cmplwi r31, 0x807
/* 804F8734  41 82 02 54 */	beq lbl_804F8988
/* 804F8738  28 1F 08 0F */	cmplwi r31, 0x80f
/* 804F873C  41 82 02 4C */	beq lbl_804F8988
/* 804F8740  28 1F 08 17 */	cmplwi r31, 0x817
/* 804F8744  41 82 02 44 */	beq lbl_804F8988
/* 804F8748  28 1F 08 1F */	cmplwi r31, 0x81f
/* 804F874C  41 82 02 3C */	beq lbl_804F8988
/* 804F8750  28 1F 08 27 */	cmplwi r31, 0x827
/* 804F8754  41 82 02 34 */	beq lbl_804F8988
/* 804F8758  28 1F 08 2F */	cmplwi r31, 0x82f
/* 804F875C  41 82 02 2C */	beq lbl_804F8988
/* 804F8760  28 1F 08 34 */	cmplwi r31, 0x834
/* 804F8764  41 82 02 24 */	beq lbl_804F8988
/* 804F8768  28 1F 08 39 */	cmplwi r31, 0x839
/* 804F876C  41 82 02 1C */	beq lbl_804F8988
/* 804F8770  28 1F 08 2F */	cmplwi r31, 0x82f
/* 804F8774  41 82 02 14 */	beq lbl_804F8988
/* 804F8778  28 1F 08 34 */	cmplwi r31, 0x834
/* 804F877C  41 82 02 0C */	beq lbl_804F8988
/* 804F8780  28 1F 08 39 */	cmplwi r31, 0x839
/* 804F8784  41 82 02 04 */	beq lbl_804F8988
/* 804F8788  28 1F 08 51 */	cmplwi r31, 0x851
/* 804F878C  41 82 01 FC */	beq lbl_804F8988
/* 804F8790  28 1F 08 56 */	cmplwi r31, 0x856
/* 804F8794  41 82 01 F4 */	beq lbl_804F8988
/* 804F8798  28 1F 08 5F */	cmplwi r31, 0x85f
/* 804F879C  41 82 01 EC */	beq lbl_804F8988
/* 804F87A0  28 1F 08 65 */	cmplwi r31, 0x865
/* 804F87A4  41 82 01 E4 */	beq lbl_804F8988
/* 804F87A8  28 1F 08 03 */	cmplwi r31, 0x803
/* 804F87AC  41 82 01 DC */	beq lbl_804F8988
/* 804F87B0  28 1F 08 08 */	cmplwi r31, 0x808
/* 804F87B4  41 82 01 D4 */	beq lbl_804F8988
/* 804F87B8  28 1F 08 10 */	cmplwi r31, 0x810
/* 804F87BC  41 82 01 CC */	beq lbl_804F8988
/* 804F87C0  28 1F 08 18 */	cmplwi r31, 0x818
/* 804F87C4  41 82 01 C4 */	beq lbl_804F8988
/* 804F87C8  28 1F 08 20 */	cmplwi r31, 0x820
/* 804F87CC  41 82 01 BC */	beq lbl_804F8988
/* 804F87D0  28 1F 08 28 */	cmplwi r31, 0x828
/* 804F87D4  41 82 01 B4 */	beq lbl_804F8988
/* 804F87D8  28 1F 08 30 */	cmplwi r31, 0x830
/* 804F87DC  41 82 01 AC */	beq lbl_804F8988
/* 804F87E0  28 1F 08 35 */	cmplwi r31, 0x835
/* 804F87E4  41 82 01 A4 */	beq lbl_804F8988
/* 804F87E8  28 1F 08 3A */	cmplwi r31, 0x83a
/* 804F87EC  41 82 01 9C */	beq lbl_804F8988
/* 804F87F0  28 1F 08 30 */	cmplwi r31, 0x830
/* 804F87F4  41 82 01 94 */	beq lbl_804F8988
/* 804F87F8  28 1F 08 35 */	cmplwi r31, 0x835
/* 804F87FC  41 82 01 8C */	beq lbl_804F8988
/* 804F8800  28 1F 08 3A */	cmplwi r31, 0x83a
/* 804F8804  41 82 01 84 */	beq lbl_804F8988
/* 804F8808  28 1F 08 52 */	cmplwi r31, 0x852
/* 804F880C  41 82 01 7C */	beq lbl_804F8988
/* 804F8810  28 1F 08 57 */	cmplwi r31, 0x857
/* 804F8814  41 82 01 74 */	beq lbl_804F8988
/* 804F8818  28 1F 08 60 */	cmplwi r31, 0x860
/* 804F881C  41 82 01 6C */	beq lbl_804F8988
/* 804F8820  28 1F 08 66 */	cmplwi r31, 0x866
/* 804F8824  41 82 01 64 */	beq lbl_804F8988
/* 804F8828  28 1F 08 04 */	cmplwi r31, 0x804
/* 804F882C  41 82 01 5C */	beq lbl_804F8988
/* 804F8830  28 1F 08 0C */	cmplwi r31, 0x80c
/* 804F8834  41 82 01 54 */	beq lbl_804F8988
/* 804F8838  28 1F 08 14 */	cmplwi r31, 0x814
/* 804F883C  41 82 01 4C */	beq lbl_804F8988
/* 804F8840  28 1F 08 1C */	cmplwi r31, 0x81c
/* 804F8844  41 82 01 44 */	beq lbl_804F8988
/* 804F8848  28 1F 08 24 */	cmplwi r31, 0x824
/* 804F884C  41 82 01 3C */	beq lbl_804F8988
/* 804F8850  28 1F 08 2C */	cmplwi r31, 0x82c
/* 804F8854  41 82 01 34 */	beq lbl_804F8988
/* 804F8858  28 1F 08 31 */	cmplwi r31, 0x831
/* 804F885C  41 82 01 2C */	beq lbl_804F8988
/* 804F8860  28 1F 08 36 */	cmplwi r31, 0x836
/* 804F8864  41 82 01 24 */	beq lbl_804F8988
/* 804F8868  28 1F 08 3B */	cmplwi r31, 0x83b
/* 804F886C  41 82 01 1C */	beq lbl_804F8988
/* 804F8870  28 1F 08 53 */	cmplwi r31, 0x853
/* 804F8874  41 82 01 14 */	beq lbl_804F8988
/* 804F8878  28 1F 08 5B */	cmplwi r31, 0x85b
/* 804F887C  41 82 01 0C */	beq lbl_804F8988
/* 804F8880  28 1F 08 61 */	cmplwi r31, 0x861
/* 804F8884  41 82 01 04 */	beq lbl_804F8988
/* 804F8888  28 1F 08 68 */	cmplwi r31, 0x868
/* 804F888C  41 82 00 FC */	beq lbl_804F8988
/* 804F8890  28 1F 08 67 */	cmplwi r31, 0x867
/* 804F8894  41 82 00 F4 */	beq lbl_804F8988
/* 804F8898  28 1F 08 09 */	cmplwi r31, 0x809
/* 804F889C  41 82 00 EC */	beq lbl_804F8988
/* 804F88A0  28 1F 08 11 */	cmplwi r31, 0x811
/* 804F88A4  41 82 00 E4 */	beq lbl_804F8988
/* 804F88A8  28 1F 08 19 */	cmplwi r31, 0x819
/* 804F88AC  41 82 00 DC */	beq lbl_804F8988
/* 804F88B0  28 1F 08 21 */	cmplwi r31, 0x821
/* 804F88B4  41 82 00 D4 */	beq lbl_804F8988
/* 804F88B8  28 1F 08 29 */	cmplwi r31, 0x829
/* 804F88BC  41 82 00 CC */	beq lbl_804F8988
/* 804F88C0  28 1F 08 58 */	cmplwi r31, 0x858
/* 804F88C4  41 82 00 C4 */	beq lbl_804F8988
/* 804F88C8  28 1F 08 0A */	cmplwi r31, 0x80a
/* 804F88CC  41 82 00 BC */	beq lbl_804F8988
/* 804F88D0  28 1F 08 12 */	cmplwi r31, 0x812
/* 804F88D4  41 82 00 B4 */	beq lbl_804F8988
/* 804F88D8  28 1F 08 1A */	cmplwi r31, 0x81a
/* 804F88DC  41 82 00 AC */	beq lbl_804F8988
/* 804F88E0  28 1F 08 22 */	cmplwi r31, 0x822
/* 804F88E4  41 82 00 A4 */	beq lbl_804F8988
/* 804F88E8  28 1F 08 2A */	cmplwi r31, 0x82a
/* 804F88EC  41 82 00 9C */	beq lbl_804F8988
/* 804F88F0  28 1F 08 59 */	cmplwi r31, 0x859
/* 804F88F4  41 82 00 94 */	beq lbl_804F8988
/* 804F88F8  28 1F 08 0B */	cmplwi r31, 0x80b
/* 804F88FC  41 82 00 8C */	beq lbl_804F8988
/* 804F8900  28 1F 08 13 */	cmplwi r31, 0x813
/* 804F8904  41 82 00 84 */	beq lbl_804F8988
/* 804F8908  28 1F 08 1B */	cmplwi r31, 0x81b
/* 804F890C  41 82 00 7C */	beq lbl_804F8988
/* 804F8910  28 1F 08 23 */	cmplwi r31, 0x823
/* 804F8914  41 82 00 74 */	beq lbl_804F8988
/* 804F8918  28 1F 08 2B */	cmplwi r31, 0x82b
/* 804F891C  41 82 00 6C */	beq lbl_804F8988
/* 804F8920  28 1F 08 5A */	cmplwi r31, 0x85a
/* 804F8924  41 82 00 64 */	beq lbl_804F8988
/* 804F8928  28 1F 00 5E */	cmplwi r31, 0x5e
/* 804F892C  41 82 00 5C */	beq lbl_804F8988
/* 804F8930  28 1F 00 5F */	cmplwi r31, 0x5f
/* 804F8934  41 82 00 54 */	beq lbl_804F8988
/* 804F8938  28 1F 00 60 */	cmplwi r31, 0x60
/* 804F893C  41 82 00 4C */	beq lbl_804F8988
/* 804F8940  28 1F 00 61 */	cmplwi r31, 0x61
/* 804F8944  41 82 00 44 */	beq lbl_804F8988
/* 804F8948  28 1F 00 69 */	cmplwi r31, 0x69
/* 804F894C  41 82 00 3C */	beq lbl_804F8988
/* 804F8950  28 1F 00 78 */	cmplwi r31, 0x78
/* 804F8954  41 82 00 34 */	beq lbl_804F8988
/* 804F8958  28 1F 00 79 */	cmplwi r31, 0x79
/* 804F895C  41 82 00 2C */	beq lbl_804F8988
/* 804F8960  28 1F 00 7A */	cmplwi r31, 0x7a
/* 804F8964  41 82 00 24 */	beq lbl_804F8988
/* 804F8968  28 1F 00 82 */	cmplwi r31, 0x82
/* 804F896C  41 82 00 1C */	beq lbl_804F8988
/* 804F8970  28 1F 00 7F */	cmplwi r31, 0x7f
/* 804F8974  41 82 00 14 */	beq lbl_804F8988
/* 804F8978  28 1F 00 80 */	cmplwi r31, 0x80
/* 804F897C  41 82 00 0C */	beq lbl_804F8988
/* 804F8980  28 1F 00 81 */	cmplwi r31, 0x81
/* 804F8984  40 82 00 08 */	bne lbl_804F898C
lbl_804F8988:
/* 804F8988  38 00 00 01 */	li r0, 1
lbl_804F898C:
/* 804F898C  2C 00 00 00 */	cmpwi r0, 0
/* 804F8990  41 82 00 50 */	beq lbl_804F89E0
/* 804F8994  80 DB 00 00 */	lwz r6, 0(r27)
/* 804F8998  38 61 00 0C */	addi r3, r1, 0xc
/* 804F899C  80 1B 00 04 */	lwz r0, 4(r27)
/* 804F89A0  38 81 00 08 */	addi r4, r1, 8
/* 804F89A4  38 A1 00 28 */	addi r5, r1, 0x28
/* 804F89A8  90 C1 00 28 */	stw r6, 0x28(r1)
/* 804F89AC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804F89B0  80 1B 00 08 */	lwz r0, 8(r27)
/* 804F89B4  90 01 00 30 */	stw r0, 0x30(r1)
/* 804F89B8  4B EA C9 B1 */	bl mFI_Wpos2UtNum
/* 804F89BC  2C 03 00 00 */	cmpwi r3, 0
/* 804F89C0  41 82 00 1C */	beq lbl_804F89DC
/* 804F89C4  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804F89C8  7F 83 E3 78 */	mr r3, r28
/* 804F89CC  80 E1 00 08 */	lwz r7, 8(r1)
/* 804F89D0  7F E4 FB 78 */	mr r4, r31
/* 804F89D4  38 A0 00 03 */	li r5, 3
/* 804F89D8  4B FE 2A B9 */	bl Player_actor_Set_EffectBgTree
lbl_804F89DC:
/* 804F89DC  3B C0 00 07 */	li r30, 7
lbl_804F89E0:
/* 804F89E0  28 1F 00 6A */	cmplwi r31, 0x6a
/* 804F89E4  38 00 00 00 */	li r0, 0
/* 804F89E8  41 80 00 0C */	blt lbl_804F89F4
/* 804F89EC  28 1F 00 6E */	cmplwi r31, 0x6e
/* 804F89F0  40 81 00 0C */	ble lbl_804F89FC
lbl_804F89F4:
/* 804F89F4  28 1F 00 6F */	cmplwi r31, 0x6f
/* 804F89F8  40 82 00 08 */	bne lbl_804F8A00
lbl_804F89FC:
/* 804F89FC  38 00 00 01 */	li r0, 1
lbl_804F8A00:
/* 804F8A00  2C 00 00 00 */	cmpwi r0, 0
/* 804F8A04  41 82 00 1C */	beq lbl_804F8A20
/* 804F8A08  7F A3 EB 78 */	mr r3, r29
/* 804F8A0C  7F 64 DB 78 */	mr r4, r27
/* 804F8A10  4B FE 1B 41 */	bl Player_actor_Search_STONE_TC
/* 804F8A14  7F C0 07 35 */	extsh. r0, r30
/* 804F8A18  40 80 00 08 */	bge lbl_804F8A20
/* 804F8A1C  3B C0 00 07 */	li r30, 7
lbl_804F8A20:
/* 804F8A20  28 1A 00 00 */	cmplwi r26, 0
/* 804F8A24  41 82 00 3C */	beq lbl_804F8A60
/* 804F8A28  A8 1A 00 00 */	lha r0, 0(r26)
/* 804F8A2C  2C 00 00 1B */	cmpwi r0, 0x1b
/* 804F8A30  41 82 00 14 */	beq lbl_804F8A44
/* 804F8A34  40 80 00 2C */	bge lbl_804F8A60
/* 804F8A38  2C 00 00 09 */	cmpwi r0, 9
/* 804F8A3C  41 82 00 18 */	beq lbl_804F8A54
/* 804F8A40  48 00 00 20 */	b lbl_804F8A60
lbl_804F8A44:
/* 804F8A44  A8 1A 01 F8 */	lha r0, 0x1f8(r26)
/* 804F8A48  60 00 00 02 */	ori r0, r0, 2
/* 804F8A4C  B0 1A 01 F8 */	sth r0, 0x1f8(r26)
/* 804F8A50  48 00 00 10 */	b lbl_804F8A60
lbl_804F8A54:
/* 804F8A54  A8 1A 02 08 */	lha r0, 0x208(r26)
/* 804F8A58  60 00 00 04 */	ori r0, r0, 4
/* 804F8A5C  B0 1A 02 08 */	sth r0, 0x208(r26)
lbl_804F8A60:
/* 804F8A60  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 804F8A64  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 804F8A68  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 804F8A6C  AB BD 00 DE */	lha r29, 0xde(r29)
/* 804F8A70  90 61 00 34 */	stw r3, 0x34(r1)
/* 804F8A74  7F A3 EB 78 */	mr r3, r29
/* 804F8A78  90 81 00 38 */	stw r4, 0x38(r1)
/* 804F8A7C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804F8A80  4B EC 20 71 */	bl sin_s
/* 804F8A84  FF E0 08 90 */	fmr f31, f1
/* 804F8A88  7F A3 EB 78 */	mr r3, r29
/* 804F8A8C  4B EC 20 11 */	bl cos_s
/* 804F8A90  3C 80 80 65 */	lis r4, lit_12773@ha /* 0x8064854C@ha */
/* 804F8A94  3C 60 80 65 */	lis r3, lit_6385@ha /* 0x8064806C@ha */
/* 804F8A98  C0 A4 85 4C */	lfs f5, lit_12773@l(r4)  /* 0x8064854C@l */
/* 804F8A9C  7F C0 07 35 */	extsh. r0, r30
/* 804F8AA0  C0 03 80 6C */	lfs f0, lit_6385@l(r3)  /* 0x8064806C@l */
/* 804F8AA4  EC 85 07 F2 */	fmuls f4, f5, f31
/* 804F8AA8  C0 C1 00 34 */	lfs f6, 0x34(r1)
/* 804F8AAC  EC 60 00 72 */	fmuls f3, f0, f1
/* 804F8AB0  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 804F8AB4  EC 25 00 72 */	fmuls f1, f5, f1
/* 804F8AB8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804F8ABC  EC 64 18 2A */	fadds f3, f4, f3
/* 804F8AC0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F8AC4  EC 26 18 2A */	fadds f1, f6, f3
/* 804F8AC8  EC 02 00 2A */	fadds f0, f2, f0
/* 804F8ACC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804F8AD0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804F8AD4  40 80 00 40 */	bge lbl_804F8B14
/* 804F8AD8  57 E0 A7 3E */	rlwinm r0, r31, 0x14, 0x1c, 0x1f
/* 804F8ADC  2C 00 00 04 */	cmpwi r0, 4
/* 804F8AE0  40 80 00 0C */	bge lbl_804F8AEC
/* 804F8AE4  2C 00 00 01 */	cmpwi r0, 1
/* 804F8AE8  40 80 00 2C */	bge lbl_804F8B14
lbl_804F8AEC:
/* 804F8AEC  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 804F8AF0  38 61 00 1C */	addi r3, r1, 0x1c
/* 804F8AF4  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 804F8AF8  38 80 00 00 */	li r4, 0
/* 804F8AFC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 804F8B00  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 804F8B04  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804F8B08  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F8B0C  4B E9 05 A1 */	bl mCoBG_Wpos2Attribute
/* 804F8B10  7C 7E 07 34 */	extsh r30, r3
lbl_804F8B14:
/* 804F8B14  7F C0 07 35 */	extsh. r0, r30
/* 804F8B18  41 80 00 5C */	blt lbl_804F8B74
/* 804F8B1C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F8B20  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 804F8B24  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804F8B28  80 81 00 38 */	lwz r4, 0x38(r1)
/* 804F8B2C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 804F8B30  3C 63 00 02 */	addis r3, r3, 2
/* 804F8B34  90 A1 00 10 */	stw r5, 0x10(r1)
/* 804F8B38  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804F8B3C  81 43 60 9C */	lwz r10, 0x609c(r3)
/* 804F8B40  7F A6 EB 78 */	mr r6, r29
/* 804F8B44  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F8B48  7F 87 E3 78 */	mr r7, r28
/* 804F8B4C  7F C9 F3 78 */	mr r9, r30
/* 804F8B50  38 81 00 10 */	addi r4, r1, 0x10
/* 804F8B54  90 01 00 18 */	stw r0, 0x18(r1)
/* 804F8B58  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804F8B5C  38 60 00 53 */	li r3, 0x53
/* 804F8B60  38 A0 00 02 */	li r5, 2
/* 804F8B64  81 8A 00 00 */	lwz r12, 0(r10)
/* 804F8B68  39 40 00 01 */	li r10, 1
/* 804F8B6C  7D 89 03 A6 */	mtctr r12
/* 804F8B70  4E 80 04 21 */	bctrl 
lbl_804F8B74:
/* 804F8B74  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804F8B78  39 61 00 60 */	addi r11, r1, 0x60
/* 804F8B7C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804F8B80  4B BA 23 95 */	bl func_8009AF14
/* 804F8B84  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804F8B88  7C 08 03 A6 */	mtlr r0
/* 804F8B8C  38 21 00 70 */	addi r1, r1, 0x70
/* 804F8B90  4E 80 00 20 */	blr 
