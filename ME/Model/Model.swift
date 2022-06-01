//
//  Model.swift
//  ME
//
//  Created by 민채호 on 2022/05/30.
//

import Foundation

// MARK: - Model

struct Mechanics: Identifiable {
    let id = UUID()
    let title: String
    let systemName: String
    let chapters: [Chapter]
}

struct Chapter: Identifiable, Equatable {
    let id = UUID()
    let chapter: String
    let title: String
    let description: String
}

// MARK: - Data

var solidChapters: [Chapter] = [
    Chapter(chapter: "Solid Mechanics", title: "Stress", description: "물체의 한 점을 지나는 특정한 평면에 작용하는 내력의 세기."),
    Chapter(chapter: "Solid Mechanics", title: "Strain", description: "물체의 변형율. 물체 내의 한 선분의 길이 변화로 측정한 변형률과 선분 사이의 각의 변화로 측정한 변형률로 나뉜다. "),
    Chapter(chapter: "Solid Mechanics", title: "Statically Determinate", description: "평형 방정식만으로 해석할 수 있는 구조물."),
    Chapter(chapter: "Solid Mechanics", title: "Statically Indeterminate", description: "평형 방정식만으로 내력과 반력을 구할 수 없는 구조물."),
    Chapter(chapter: "Solid Mechanics", title: "Degree of Statical Indeterminacy", description: "= 값을 모르는 외부 힘들의 개수 - 만들 수 있는 평형 방정식의 개수"),
    Chapter(chapter: "Solid Mechanics", title: "Ductile", description: "Fail이 일어나기 전에 큰 strain을 가질 수 있는 재료."),
    Chapter(chapter: "Solid Mechanics", title: "Brittle", description: "Fail이 일어나기 전에 yielding 현상이 전혀 또는 거의 일어나지 않는 재료."),
]

var dynamicsChapters: [Chapter] = [
    Chapter(chapter: "Dynamics", title: "Kinematics", description: "운동의 기하학적인 표현만을 다루며, 따라서 운동을 유발하는 힘은 고려 대상이 아니다."),
    Chapter(chapter: "Dynamics", title: "Kinetics", description: "힘의 작용으로 나타나는 물체의 운동에 관한 사항을 취급한다."),
    Chapter(chapter: "Dynamics", title: "Point Particle", description: "크기를 무시할 수 있는 물체."),
    Chapter(chapter: "Dynamics", title: "Rigid Body", description: "전체 크기 또는 위치 변동에 견주어 형상 변화를 무시할 수 있는 물체."),
    Chapter(chapter: "Dynamics", title: "Inertial System", description: "뉴턴의 제2법칙이 적용되는 모든 시스템."),
    Chapter(chapter: "Dynamics", title: "Work and Energy Principle", description: "뉴턴의 제2법칙을 경로에 대해 적분한 운동방정식."),
    Chapter(chapter: "Dynamics", title: "Impulse and Momentum", description: "뉴턴의 제2법칙을 시간에 대해 적분한 운동방정식."),
]

var fluidChapters: [Chapter] = [
    Chapter(chapter: "Fluid Mechanics", title: "Fluid", description: "임의의 크기로 shear stress를 받을 때, 연속적으로 변형하는 물질."),
    Chapter(chapter: "Fluid Mechanics", title: "Pascal's Law", description: "Shear stress가 존재하지 않는 한, 정지 상태 또는 운동 중에 있는 유체 내부의 한 점에서의 압력은 방향과 무관하다."),
    Chapter(chapter: "Fluid Mechanics", title: "Incompressible Fluid", description: "일정한 밀도를 갖는 유체. 액체의 경우 밀도 변화는 보통 무시할 수 있으므로 비압축성이라고 가정한다."),
    Chapter(chapter: "Fluid Mechanics", title: "Compressible Fluid", description: "밀도가 압력과 온도의 변화에 따라 현저하게 변할 수 있는 유체. 기체는 밀도가 쉽게 변하기 때문에 압축성이다."),
    Chapter(chapter: "Fluid Mechanics", title: "Euler Perspective", description: "유체가 고정된 점을 흐를 때, 그 점에서 일어나는 변화를 공간과 시간의 함수로 기술한다."),
    Chapter(chapter: "Fluid Mechanics", title: "Lagrange Perspective", description: "개개의 유체입자들의 움직임을 추적하며, 이 입자와 관련한 유체의 상태량이 어떻게 시간의 함수로서 변하는가를 결정한다."),
    Chapter(chapter: "Fluid Mechanics", title: "Streamline", description: "한 순간의 여러 입자에서, 각 입자의 속도 벡터의 접선으로 이루어진 선."),
]

var thermoChapters: [Chapter] = [
    Chapter(chapter: "Thermodynamics", title: "Closed System", description: "Boundary를 통한 질량 이동이 없는 시스템. 항상 동일한 질량을 갖는다."),
    Chapter(chapter: "Thermodynamics", title: "Control Volume", description: "질량 유동이 있는 장치들에 대해 열역학적 해석을 수행할 때의 영역."),
    Chapter(chapter: "Thermodynamics", title: "Extensive Property", description: "전체 시스템의 값이 시스템의 나누어진 여러 부분의 값의 합과 같은 상태량."),
    Chapter(chapter: "Thermodynamics", title: "Intensive Property", description: "더해질 수 있는 상태량이 아니기 때문에 시스템의 크기나 규모와 무관하다."),
    Chapter(chapter: "Thermodynamics", title: "Equilibrium", description: "열적 평형, 역학적 평형, 상평형, 화학적 평형을 모두 만족할 때 이를 완전한 평형을 이뤘다고 한다."),
    Chapter(chapter: "Thermodynamics", title: "Energy Transfer", description: "에너지는 열과 일의 형태로만 전달된다."),
    Chapter(chapter: "Thermodynamics", title: "Conduction", description: "에너지가 많은 물질의 입자로부터 에너지가 적은 인접한 입자로의 입자 간 상호작용으로 인한 에너지 전달."),
]

var mechanicsData: [Mechanics] = [
    Mechanics(title: "Solid Mechanics", systemName: "cube", chapters: solidChapters),
    Mechanics(title: "Dynamics", systemName: "move.3d", chapters: dynamicsChapters),
    Mechanics(title: "Fluid Mechanics", systemName: "drop", chapters: fluidChapters),
    Mechanics(title: "Thermodynamics", systemName: "thermometer", chapters: thermoChapters),
]

var suggestions: [Chapter] = [
    solidChapters[0],
    dynamicsChapters[0],
    fluidChapters[0],
    thermoChapters[0],
]
